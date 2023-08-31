import 'dart:ui';

import 'package:fi/util/adaptor.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
class MyThemeWidget extends InheritedWidget {
  /// 定义字体
  // 页面标题
  final TextStyle pageTitle;

  // card标题
  final TextStyle cardTitle;

  // category 标题
  final TextStyle categoryTitle;



  // up名字
  final TextStyle ownerNameText;
  // up 信息
  final TextStyle ownerInfoText;
  //视频标题
  final TextStyle videoTitleText;
  //页面标题
  final TextStyle pageTitleText;
  //视频简介
  final TextStyle videoDescText;
  //视频控件文字
  final TextStyle videoWidgetText;

  final TextStyle commentUserText;

  // 单个view样式
  final BoxDecoration viewDeco;

  /// 定义字体 end

  /// 定义形状
  final Radius smallRadius;

  final BorderRadius smallBorderRadius;
  final BorderRadius mediumBorderRadius;
  final BorderRadius largeBorderRadius;
  final BoxBorder borderStroke = Border.all(width: 1, color: Colors.grey);

  /// 定义形状 end

  /// 定义布局
  final double paddingDefault = SU.rpx(5);
  final double paddingLarge = SU.rpx(50);
  final double gridSpacing = SU.rpx(6.0);

  /// 定义布局 end

  /// 定义颜色
  static const Color viewBackground = Colors.white;
  static const Color background = Color(0xffF0F0F0);
  static const Color primary = Color(0xfffb7299);
  static const Color link = Color.fromRGBO(93, 121, 214, 1);
  static const Color playerWidget = Colors.white;
  static const Color replyBackground = Color.fromRGBO(247, 247, 247, 1);

  Color get debugColor => Colors.primaries[math.Random().nextInt(Colors.primaries.length)];

  /// 定义颜色 end

  MyThemeWidget({
    Key? key,
    required child,
    this.pageTitle = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    this.cardTitle = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    this.pageTitleText = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    this.categoryTitle =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    this.ownerInfoText = const TextStyle(fontSize: 5, color: Colors.white10),
    this.ownerNameText = const TextStyle(fontSize: 10, color: primary),
    this.videoDescText = const TextStyle(fontSize: 6, color: Colors.white10),
    this.videoTitleText = const TextStyle(fontSize: 10),
    this.videoWidgetText = const TextStyle(fontSize: 10, color: Colors.white70),
    this.commentUserText = const TextStyle(fontSize: 10, color: Colors.black38, )
  })  : smallBorderRadius = BorderRadius.circular(5),
        mediumBorderRadius = BorderRadius.circular(10),
        largeBorderRadius = BorderRadius.circular(20),
        smallRadius = const Radius.circular(5),
        viewDeco = BoxDecoration(
            color: viewBackground, borderRadius: BorderRadius.circular(5)),
        super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant MyThemeWidget oldWidget) {
    return oldWidget.pageTitle != pageTitle ||
        oldWidget.cardTitle != cardTitle ||
        oldWidget.categoryTitle != categoryTitle
    ;
  }

  static MyThemeWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyThemeWidget>();
  }
}
