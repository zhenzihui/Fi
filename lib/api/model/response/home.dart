import 'package:fi/api/model/response/video.dart';

class BaseVideo {
  final String bvId;
  final num cId;
  final String title;
  final String pic;
  final Owner owner;
  final VideoStat? stat;

  static BaseVideo fromJson(Map<String, dynamic> raw) => BaseVideo(
        bvId: raw['bvid'],
        cId: raw['cid'],
        title: raw['title'],
        pic: raw['pic'],
        owner: Owner.fromJson(raw['owner']),
        stat: raw['stat'] == null? null: VideoStat.fromJson(raw['stat']),
      );

  static List<BaseVideo> fromJsonList(List<dynamic> list) =>
      list.map((e) => BaseVideo.fromJson(e)).toList();

  BaseVideo(
      {required this.bvId,
      required this.cId,
      required this.title,
      required this.pic,
      required this.owner,
      required this.stat});
}

