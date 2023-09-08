import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/protobuf/dm_define.pb.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:flutter/foundation.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

class UniPlayerController {
  static VideoPlayerController? _instance;

  // cid: 分p id
  static num? currentCId;

  static Future<VideoPlayerController> initByUrl(String url, num cId) async {
    final header = BClient.globalCookie ?? const <String, String>{};
    await _instance?.dispose();
    final ctr =
        VideoPlayerController.networkUrl(Uri.parse(url), httpHeaders: header);
    return ctr.initialize().then((value) {
      currentCId = cId;
      _instance = ctr;
      return _instance!;
    });
  }

  static dispose() {
    _instance?.dispose();
    currentCId = null;
    _instance = null;
  }

  static VideoPlayerController getInstance() => _instance!;
}

// 弹幕控制器 会用到播放器
class UniDanmakuController {
  //视频信息
  static num? _cId;
  static int? _type;

  //弹幕的流
  static StreamController<DanmakuElem>? _danmakuStream;

  //弹幕总量库
  static final List<DanmakuElem> _danmakuList = List.empty(growable: true);
  static final Map<String, List<DanmakuElem>> danmakuCache = {};

  // 弹幕当前的下载单位 （下载从1开始）
  static int _segIndex = -1;

  //下载弹幕的时间单位
  static const Duration _segmentPeriod = Duration(minutes: 6);

  static clear() => _danmakuList.clear();

  static dispose() {
    _segIndex = -1;
    _danmakuStream?.close();
    _danmakuList.clear();
    _danmakuStream = null;
  }

  static initialize(num cId, int type) {
    _segIndex = -1;
    _danmakuStream = StreamController();
    _cId = cId;
    _type = type;
  }

  static download(Duration progress) {
    //除，取整
    final int segIndex = (progress.inSeconds ~/ _segmentPeriod.inSeconds) + 1;
    if (segIndex != _segIndex) {
      BClient.getVideoDanmaku(
              GetDanmakuReq(type: _type!, oId: _cId!, segmentIndex: segIndex))
          .then((value) {
        _segIndex = segIndex;
        _danmakuList.addAll(value.elems);
      });
    }
  }

  static addDanmaku(Duration progress) {
    for (final e in _danmakuList) {
      if (e.progress <= progress.inMilliseconds &&
          e.progress >=
              Duration(
                      milliseconds: progress.inSeconds -
                          const Duration(seconds: 10).inSeconds)
                  .inMilliseconds) {
        Future(() {
          _danmakuList.remove(e);
          _danmakuStream?.add(e);
        });
      }
    }
  }

  static StreamController<DanmakuElem> getInstance() => _danmakuStream!;
}
