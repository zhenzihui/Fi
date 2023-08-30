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

/// 视频分区/频道code
enum VideoZoneCode {
  bangumi(tid: 13, channelId: 2, name: "番剧"),
  movie(tid: 23, channelId: 3, name: "电影"),
  guochuang(tid: 167, channelId: 4, name: "国创"),
  tv(tid: 11, channelId: 5, name: "电视剧"),
  variety(channelId: 6, name: "综艺"),
  documentary(tid: 177, channelId: 7, name: "纪录片"),
  douga(tid: 1, channelId: 8, name: "动画"),
  game(tid: 4, channelId: 11, name: "游戏"),
  kichiku(tid: 119, channelId: 20, name: "鬼畜"),
  music(tid: 3, channelId: 9, name: "音乐"),
  dance(tid: 129, channelId: 10, name: "舞蹈"),
  cinephile(tid: 181, channelId: 25, name: "影视"),
  ent(tid: 5, channelId: 23, name: "娱乐"),
  knowledge(tid: 36, channelId: 12, name: "知识"),
  tech(tid: 188, channelId: 13, name: "科技"),
  information(tid: 202, channelId: 21, name: "资讯"),
  food(tid: 211, channelId: 17, name: "美食"),
  life(tid: 160, channelId: 16, name: "生活"),
  car(tid: 223, channelId: 15, name: "汽车"),
  fashion(tid: 155, channelId: 22, name: "时尚"),
  sports(tid: 234, channelId: 14, name: "运动"),
  animal(tid: 217, channelId: 18, name: "动物圈"),
  vlog(channelId: 19, name: "VLOG"),
  standAlone(tid: 17, channelId: 110001, name: "单机游戏"),
  virtual(channelId: 31, name: "虚拟UP主"),
  love(channelId: 32, name: "公益"),
  mooc( channelId: 33, name: "公开课"),
  read(channelId: 26, name: "专栏"),
  live(channelId: 1, name: "直播"),
  activity(channelId: 28, name: "活动"),
  cheese(channelId: 27, name: "课堂"),
  blackboard(channelId: 29, name: "社区中心"),
  musicPlus(channelId: 24, name: "新歌热榜"),
  ;

  const VideoZoneCode(
      {this.tid, required this.channelId, required this.name});

  //分区id
  final int? tid;

  //频道id
  final int channelId;
  final String name;
}
