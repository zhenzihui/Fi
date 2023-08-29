import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

class VideoZoneData {
  //分区id
  final int tid;
  final int? parentTid;

  //分区名称
  final String name;

  VideoZoneData(this.tid, this.name, [this.parentTid]);

  static get data async {
    final str = await rootBundle.loadString("assets/data/video_zone.json");
    final dict = jsonDecode(str);

  }
}

enum VideoZone {
  douga(1, "动画"),
  ;

  const VideoZone(this.tid, this.name);

  //分区id
  final int tid;

  //分区名称
  final String name;
}

enum SubVideoZone {
  mad(24, 1, "MAD·AMV"),
  ;

  const SubVideoZone(this.tid, this.parentTid, this.name);

  //分区id
  final int tid;
  final int parentTid;

  //分区名称
  final String name;
}
