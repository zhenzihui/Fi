import 'package:flutter/material.dart';


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

class VideoPlayUrl {
  final List<VideoUrl> urlList;

  //当前的视频质量
  final num? quantity;

  VideoPlayUrl({required this.urlList, required this.quantity});

  static VideoPlayUrl fromJson(Map<String, dynamic> raw) {
    debugPrint("VideoPlayUrl from : $raw");
    final playUrl = VideoPlayUrl(
        urlList:
            (raw['durl'] as List).map((e) => VideoUrl.fromJson(e)).toList(),
        quantity: raw['quantity']);
    return playUrl;
  }
}

class VideoUrl {
  final String url;
  final List<String> backupUrl;

  VideoUrl({required this.url, required this.backupUrl});

  static VideoUrl fromJson(Map<String, dynamic> raw) {
    debugPrint("VideoUrl from $raw");
    return VideoUrl(
        url: raw['url'],
        backupUrl:
            (raw['backup_url'] as List).map((e) => e.toString()).toList());
  }
}

//视频播放地址信息的格式信息
class VideoSupportFormat {
  final num quality;
  final String newDescription;
  final String displayDesc;

  VideoSupportFormat(
      {required this.quality,
      required this.newDescription,
      required this.displayDesc});

  static fromJson(Map<String, dynamic> raw) => VideoSupportFormat(
      quality: raw['quality'],
      newDescription: raw['new_description'],
      displayDesc: raw['display_desc']);
}

// class VideoPlayUrl {
//   final
// }
