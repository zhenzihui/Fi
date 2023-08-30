//视频分区数据

import 'dart:convert';

import 'package:flutter/services.dart';

//app的元数据 视频分区等
class AppMetaData {
  static List<VideoZoneData>? _videoZoneChannelList;

  static List<VideoZoneData> get videoZoneList =>
      (_videoZoneChannelList ?? []).where((element) => element.tid != null).toList();

  static List<VideoZoneData> get videoChannelList =>
      (_videoZoneChannelList ?? []).where((element) => element.tid == null).toList();

  static Future initialize() {
    return rootBundle.loadString("assets/data/video_zone.json").then((value) {
      _videoZoneChannelList = VideoZoneData.fromJsonList(jsonDecode(value));
    });
  }
}

class VideoZoneData {
  final int? channelId;
  final String name;
  final int? tid;
  final String? route;
  final String? icon;
  final String? url;
  final List<VideoSubZoneData> sub;

  VideoZoneData(
      {required this.channelId,
      required this.name,
      required this.tid,
      required this.route,
      required this.icon,
      required this.url,
      required this.sub});

  static List<VideoZoneData> fromJsonList(dynamic raw) {
    return (raw as List<dynamic>).map((e) {
      return VideoZoneData(
        channelId: e['channelId'],
        name: e['name'],
        tid: e['tid'],
        route: e['route'],
        icon: e['icon'],
        url: e['url'],
        sub: e['sub'] == null
            ? []
            : (e['sub'] as List<dynamic>).map((s) {
                return VideoSubZoneData(
                    subChannelId: s['subChannelId'],
                    name: s['name'],
                    tid: s['tid'],
                    route: s['route'],
                    url: s['url']);
              }).toList(),
      );
    }).toList();
  }
}

class VideoSubZoneData {
  final int? subChannelId;
  final String? name;
  final int? tid;
  final String? route;
  final String? url;

  VideoSubZoneData(
      {required this.subChannelId,
      required this.name,
      required this.tid,
      required this.route,
      required this.url});
}
