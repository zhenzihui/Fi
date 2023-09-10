//
import 'package:fi/api/model/request/base.dart';
///点赞操作
enum LikeOpt {
  //点赞
  like(1),
  //取消赞
  cancel(2);

  const LikeOpt(this.opt);

  final num opt;
}
///是否点赞了视频
enum LikeStat {
  // 点赞了
  liked(1),
  // 没点赞
  notLiked(0);
  const LikeStat(this.stat);
  final int stat;
}
//点赞
class LikeRequest extends CsrfReq {
  final num? aId;
  final String? bvId;
  final LikeOpt like;

  LikeRequest({this.aId, this.bvId, required this.like,});

  @override
  Map<String, dynamic> toJson() {
    assert(bvId!=null || aId != null);
    final Map<String, dynamic> data = {"like": like.opt};
    if(aId!=null) {
      data.addAll({"aid": aId!});
    }
    if(bvId!=null) {
      data.addAll({"bvid": bvId!});
    }
    return super.toJson()..addAll(data);
  }
}
//查询是否点赞
class GetLikeStatRequest {
  num? aId;
  String? bvId;
  GetLikeStatRequest({this.aId, this.bvId});

  Map<String, dynamic> toJson() {
    assert(aId!=null|| bvId!=null);
    final Map<String, dynamic> data = {};

    if(bvId != null) {
      data.putIfAbsent("bvid", () => bvId);
    } else if(aId != null) {
      data.putIfAbsent("aid", () => aId);
    }
    return data;
  }
}
