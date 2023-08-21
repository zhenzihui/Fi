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

