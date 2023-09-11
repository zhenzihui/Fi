import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:fi/api/api_list.dart';
import 'package:fi/api/common.dart';
import 'package:fi/api/model/protobuf/dm_define.pb.dart';
import 'package:fi/api/model/request/base.dart';
import 'package:fi/api/model/request/comment.dart';
import 'package:fi/api/model/request/login.dart';
import 'package:fi/api/model/request/operation.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/base.dart';
import 'package:fi/api/model/response/comment/comment.dart';
import 'package:fi/api/model/response/login.dart';
import 'package:fi/api/model/response/operation.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/page/index/home.dart';
import 'package:fi/util/page.dart';
import 'package:fi/util/player.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

/// 添加日志
class LoggerInterceptor extends InterceptorsWrapper {
  ///是否是release包
  bool isRelease = false;

  LoggerInterceptor(this.isRelease);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (isRelease) {
      super.onRequest(options, handler);
    } else {
      debugPrint(
          "\n================================= CURL开始 =================================");
      debugPrint(dio2curl(options));
      debugPrint(
          "\n================================= CURL结束 =================================");

      // if (options.data != null) {
      //   //不是表单数据输出数据
      //   if (options.data is! FormData) {
      //     debugPrint(json.encode(options.data));
      //   }
      // }
      handler.next(options);
    }
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (isRelease) {
      super.onResponse(response, handler);
    } else {
      debugPrint(
          "\n================================= 响应数据开始 =================================");
      debugPrint("uri = ${response.realUri}");
      debugPrint("code = ${response.statusCode}");
      if (response.data != null && response.data is Map) {
        debugPrint("data = ${json.encode(response.data)}");
      }
      debugPrint(
          "================================= 响应数据结束 =================================\n");
      handler.next(response);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (isRelease) {
      super.onError(err, handler);
    } else {
      debugPrint(
          "\n=================================错误响应数据 =================================");
      debugPrint("type = ${err.type}");
      debugPrint("message = ${err.message}");
      debugPrint("stackTrace = ${err.stackTrace}");
      debugPrint("\n");
      handler.next(err);
    }
  }

  // A simple utility function to dump `curl` from "Dio" requests
  String dio2curl(RequestOptions requestOption) {
    var curl = '';

    // Add PATH + REQUEST_METHOD
    curl += "curl --request ${requestOption.method} '${requestOption.uri}'";

    // Include headers
    for (var key in requestOption.headers.keys) {
      curl += " -H $key: '${requestOption.headers[key]}";
    }

    // Include data if there is data
    if (requestOption.data != null) {
      if (requestOption.data is Map || requestOption.data is List) {
        curl += " -d '${jsonEncode(requestOption.data)}'";
      } else {
        curl += " -d '${requestOption.data}'";
      }
    }

    curl += ' --insecure'; //bypass https verification

    return curl;
  }
}

/// 添加请求头
class RequestInterceptor extends Interceptor {
  _toPage(Widget page) => Future(() => PU().offTo(page));

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final clientHeader = {
      'Referer': 'https://www.bilibili.com/',
      'user-agent':
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36'
    };

    options.headers.addAll(clientHeader);
    final String? cookieValues = options.headers['cookie'];

    if (cookieValues != null && CredentialHelper.getInstance() == null) {
      CredentialHelper.initialize([cookieValues]);
    }

    BClient.globalCookie = CredentialHelper.getInstance()?.header
      ?..addAll(clientHeader);

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    response.headers.map.forEach((key, value) {
      if (key == "set-cookie") {
        CredentialHelper.initialize(value).header;
      }
    });
    //检查code
    if (response.statusCode == 412) {
      _toPage(const LoginPage());
    }

    handler.next(response);
  }
}

class BClient {
  static final _dio = Dio()..interceptors.addAll(_interceptors);

  static final _interceptors = [
    LoggerInterceptor(false),
    RequestInterceptor(),
  ];

  /// 给其他地方用的cookie
  static Map<String, String>? globalCookie;

  /// 弹幕的缓存
  static final Map<String, List<DanmakuElem>> danmakuCache = {};

  static Future<void> init() async {
    final cookieInterceptor = await getApplicationSupportDirectory();
    _interceptors.add(CookieManager(
        PersistCookieJar(storage: FileStorage(cookieInterceptor.path))));
    _dio.interceptors.addAll(_interceptors);
    _dio.options = BaseOptions(validateStatus: (_) => true);
  }

  /// 生成登陆二维码
  static Future<GenQrCodeResp> generateQrCode() {
    return _dio
        .get(ApiAuth.genQRCode.api,
            queryParameters: {'source': 'main-fe-header'})
        .then((value) => _handleJsonResponse(value))
        .then((data) => GenQrCodeResp.fromJson(data));
  }

  /// 查询二维码扫码状态
  static Future<QrcodePollResp> pollQrCode(String qrCodeKey) {
    final body = QrcodePollReq(qrCodeKey);

    return _dio
        .get(ApiAuth.pollQRCode.api, queryParameters: body.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((data) => QrcodePollResp.fromJson(data));
  }

  /// 查询推荐
  static Future<List<VideoDetail>> getRecommendedVideos() {
    return _dio
            .get(ApiHome.getRecommendedVideos.api)
            .then((value) => _handleJsonResponse(value))
            .then((data) => VideoDetail.fromJsonList(
                _handleDataAsList(data, HostInfo.listKeyItem)))
        // .onError((error, stackTrace) { throw error!; })
        ;
  }

  /// 获取视频详情
  static Future<VideoDetail> getVideoDetail(String bvId) {
    return _dio
        .get(ApiVideo.getDetail.api, queryParameters: {"bvid": bvId})
        .then((value) => _handleJsonResponse(value))
        .then((value) => VideoDetail.fromJson(value));
  }

  /// 获取视频播放地址
  static Future<VideoPlayUrl> getVideoPlayUrl(GetVideoPlayUrlReq req) {
    return _dio
        .get(ApiVideo.getPlayUrl.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) => VideoPlayUrl.fromJson(value));
  }

  /// 获取视频的关联视频
  static Future<List<VideoDetail>> getRelatedVideos(GetVideoDetailReq req) {
    return _dio
        .get(ApiVideo.getRelated.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) =>
            compute((message) => message, VideoDetail.fromJsonList(value)));
  }

  ///获取热门视频
  static Future<PopularVideoList> getPopularVideos(PageReq req) {
    return _dio
        .get(ApiVideo.getPopular.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) =>
            compute((message) => message, PopularVideoList.fromJson(value)));
  }

  ///获取分区视频
  static Future<ZoneVideoList> getZoneVideos(ZoneVideoListReq req) {
    return _dio
        .get(ApiVideo.getZoneNewestList.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) =>
            compute((message) => message, ZoneVideoList.fromJson(value)));
  }

  /// 获取视频弹幕
  static Future<DmSegMobileReply> getVideoDanmaku(GetDanmakuReq req) async {
    final exist = danmakuCache[req.key];
    if (exist != null) {
      return DmSegMobileReply(elems: exist);
    }

    final response = await _dio.get<List<int>>(
      ApiVideo.getDanmaku.api,
      queryParameters: req.toJson(),
      options: Options(responseType: ResponseType.bytes),
    );
    final data = await _handleProtobufResponse(response) as List<int>;
    final danmaku = DmSegMobileReply.fromBuffer(data);
    danmakuCache.addAll({req.key: danmaku.elems});
    return danmaku;
  }

  ///获取稿件的评论
  static Future<CommentListResp> getComments(GetCommentListReq req) {
    return _dio
        .get(ApiComment.getComments.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) =>
            compute((message) => message, CommentListResp.fromJson(value)));
  }

  ///获取稿件的评论的回复
  static Future<ReplyListResp> getReplies(GetReplyListReq req) {
    return _dio
        .get(ApiComment.getReplies.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) =>
            compute((message) => message, ReplyListResp.fromJson(value)));
  }

  ///点赞
  static Future<dynamic> like(LikeRequest req) {
    return _dio
        .post(ApiOperation.like.api,
            data: ApiUtils.jsonToForm(req.toJson()),
            options: Options(contentType: Headers.formUrlEncodedContentType))
        .then((value) => _handleJsonResponse(value));
  }

  ///投币
  static Future<dynamic> addCoins(AddCoinReq req) {
    return _dio
        .post(ApiOperation.addCoins.api,
        data: ApiUtils.jsonToForm(req.toJson()),
        options: Options(contentType: Headers.formUrlEncodedContentType))
        .then((value) => _handleJsonResponse(value))
    ;
  }
  
  ///查询是否点赞
  static Future<int> getLikeStat(GetOptStatRequest req) {
    return _dio
        .get(ApiOperation.getHasLike.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) => value as int);
  }

  ///查询是否投币
  static Future<GetCoinStatResp> getCoinStat(GetOptStatRequest req) {
    return _dio
        .get(ApiOperation.getHasAddCoins.api, queryParameters: req.toJson())
        .then((value) => _handleJsonResponse(value))
        .then((value) => GetCoinStatResp.fromJson(value));
  }

  ///查询是否收藏
  static Future<GetHasFavouredResp> getFavStat(GetOptStatRequest req) {
    return _dio
        .get(ApiOperation.getHasFavoured.api, queryParameters: {"aid" : req.bvId??req.aId})
        .then((value) => _handleJsonResponse(value))
        .then((value) => GetHasFavouredResp.fromJson(value));
  }

  /// 以下是内部方法
  /// 判断是否有业务错误， 返回data
  static Future<dynamic> _handleJsonResponse(Response<dynamic> response) async {
    if (response.statusCode != HttpStatus.ok) {
      return Future.error(response.toString());
    }
    final biz = await compute((message) => message,
        BizResponse.fromJson(response.data as Map<String, dynamic>));
    if (biz.code != BizCode.success.code) {
      final ctx = MyNavObserver.getInstance().navigator?.overlay?.context;
      if (ctx != null) {
        return Future(() {
          ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
              duration: const Duration(milliseconds: 300),
              content: ErrorPage(message: biz.message)));
          // _handleBizError(biz);
        }).then((value) => Future.error(BizCode.values.firstWhere(
            (v) => v.code == biz.code,
            orElse: () => BizCode.unknown)));
      }
      return Future.error(BizCode.values.firstWhere((v) => v.code == biz.code,
          orElse: () => BizCode.unknown));
    }
    return biz.data;
  }

  ///处理protobuf流
  static Future<dynamic> _handleProtobufResponse(
      Response<dynamic> response) async {
    if (response.statusCode != HttpStatus.ok) {
      return Future.error(response.toString());
    }
    return response.data;
  }

  static List<dynamic> _handleDataAsList(Map<String, dynamic> data,
          [String keyName = HostInfo.dataKeyItem]) =>
      data[keyName] as List<dynamic>;

  static _handleBizError(BizResponse biz) {
    if (biz.code == -101) {
      _toPage(const LoginPage());
    }
  }

  static _toPage(Widget page) => PU().offTo(page);
}
