
///获取视频详情请求
class GetVideoDetailReq {
  final String bvId;

  GetVideoDetailReq({required this.bvId});

  toJson() => {
    "bvid": bvId
  };
}

///获取视频播放信息
class GetVideoPlayUrlReq {
  final String cId;
  final String bvId;

  GetVideoPlayUrlReq({required this.cId, required this.bvId});

  toJson() => {
    "avid":0,
    "ep_id":0,
    "cid" : cId,
    "bvid": bvId,
    "qn" : 127,
    "fnval": 1,
    "fourk": 1,
  };


}