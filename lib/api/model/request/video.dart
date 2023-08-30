import 'package:fi/api/model/request/base.dart';

///获取视频详情请求
///获取关联视频请求
class GetVideoDetailReq {
  final String bvId;

  GetVideoDetailReq({required this.bvId});

  toJson() => {"bvid": bvId};
}

///获取视频播放信息
class GetVideoPlayUrlReq {
  final String cId;
  final String bvId;

  GetVideoPlayUrlReq({required this.cId, required this.bvId});

  toJson() => {
        "avid": 0,
        "ep_id": 0,
        "cid": cId,
        "bvid": bvId,
        "qn": 127,
        "fnval": 1,
        "fourk": 1,
      };
}

/// 分区视频查询
class ZoneVideoListReq extends PageReq {
  /// 分区的tid
  final int rId;

  @override
  ZoneVideoListReq copyWith(int? page, {int? rId, int? pageCount}) {
    return ZoneVideoListReq(
      rId ?? this.rId,
      page ?? super.page,
      pageCount ?? super.pageCount,
    );
  }

  @override
  Map<String, dynamic> toJson() => super.toJson()..addAll({'rid': rId});

  ZoneVideoListReq(this.rId, super.page, [super.pageCount]);
}
