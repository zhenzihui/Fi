import 'package:flutter/material.dart';

class VideoDetail {
  final String bvId;

  //简介
  final String desc;

  //分p数
  final num videos;
  final num aId;
  final num tId;
  final num cId;

  //标题
  final String title;
  final DateTime pubDate;

  //up主
  final Owner owner;

  //信息
  final VideoStat stat;

  static fromJson(Map<String, dynamic> raw) {
    return VideoDetail(
      bvId: raw['bvid'],
      desc: raw['desc'],
      videos: raw['videos'],
      aId: raw['aid'],
      tId: raw['tid'],
      cId: raw['cid'],
      title: raw['title'],
      owner: Owner.fromJson(raw['owner']),
      pubDate: DateTime.fromMillisecondsSinceEpoch(raw['pubdate'] * 100 as int)
          .toLocal(),
      stat: VideoStat.fromJson(raw['stat']),
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
      required this.owner,
      required this.stat,
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
    debugPrint("VideoPlayUrl res : $playUrl");

    return playUrl;
  }
}

class VideoUrl {
  final String? url;
  final List<String>? backupUrl;

  VideoUrl({required this.url, required this.backupUrl});

  static VideoUrl fromJson(Map<String, dynamic> raw) {
    final url = VideoUrl(
        url: raw['url'],
        backupUrl:
            (raw['backup_url'] as List?)?.map((e) => e.toString()).toList());
    debugPrint("VideoUrl res $url");

    return url;
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

/// UP主
class Owner {
  final num mId;
  final String name;

  //头像
  final String face;

  Owner({required this.mId, required this.name, required this.face});

  static fromJson(Map<String, dynamic> raw) =>
      Owner(mId: raw['mid'], name: raw['name'], face: raw['face']);
}

/// 视频信息
class VideoStat {
  final String view;
  final String danmaku;
  final String? reply;
  final String? favorite;
  final String? coin;
  final String? share;
  final String? nowRank;
  final String? hisRank;
  final String like;
  final String? evaluation;
  final String? argueMsg;

  VideoStat(
      {required this.view,
      required this.danmaku,
      required this.reply,
      required this.favorite,
      required this.coin,
      required this.share,
      required this.nowRank,
      required this.hisRank,
      required this.like,
      required this.evaluation,
      required this.argueMsg});

  static fromJson(dynamic raw) {
    VideoStat(
      view: raw['view'].toString(),
      danmaku: raw['danmaku'].toString(),
      reply: raw['reply'].toString(),
      favorite: raw['favorite'].toString(),
      coin: raw['coin'].toString(),
      share: raw['share'].toString(),
      nowRank: raw['now_rank'].toString(),
      hisRank: raw['his_rank'].toString(),
      like: raw['like'].toString(),
      evaluation: raw['evaluation'],
      argueMsg: raw['argue_msg'],
    );
  }
}
