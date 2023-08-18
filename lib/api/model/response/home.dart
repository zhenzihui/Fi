class BaseVideo {
  final String bvId;
  final num cId;
  final String title;
  final String pic;
  final num id;

  static BaseVideo fromJson(Map<String, dynamic> raw) => BaseVideo(
        bvId: raw['bvid'],
        cId: raw['cid'],
        title: raw['title'],
        pic: raw['pic'],
        id: raw['id'],
      );

  static List<BaseVideo> fromJsonList(List<dynamic> list) =>
      list.map((e) => BaseVideo.fromJson(e)).toList();

  BaseVideo(
      {required this.bvId,
      required this.cId,
      required this.title,
      required this.pic,
      required this.id});
}

class VideoDetail {
  final String bvId;
  final String desc;
  final num videos;
  final num aId;
  final num tId;
  final num cId;
  final String title;
  final DateTime pubDate;

  static fromJson(Map<String, dynamic> raw) {
    return VideoDetail(
      bvId: raw['bvid'],
      desc: raw['desc'],
      videos: raw['videos'],
      aId: raw['aid'],
      tId: raw['tid'],
      cId: raw['cid'],
      title: raw['title'],
      pubDate: DateTime.fromMillisecondsSinceEpoch(raw['pubdate'] * 100 as int)
          .toLocal(),
    );
  }

  VideoDetail(
      {required this.bvId,
      required this.desc,
      required this.videos,
      required this.aId,
      required this.tId,
      required this.cId,
      required this.title,
      required this.pubDate});
}
