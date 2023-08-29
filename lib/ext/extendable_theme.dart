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

  // 价格
  final TextStyle priceText;

  // 醒目价格
  final TextStyle specialPriceText;

  // up名字
  final TextStyle ownerNameText;
  // up 信息
  final TextStyle ownerInfoText;
  //视频标题
  final TextStyle videoTitleText;
  //视频简介
  final TextStyle videoDescText;
  //视频控件文字
  final TextStyle videoWidgetText;

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
  final double gridSpacing = SU.rpx(6.0);

  /// 定义布局 end

  /// 定义颜色
  static const Color viewBackground = Colors.white;
  static const Color background = Color(0xffF0F0F0);
  static const Color primary = Color(0xfffb7299);
  static const Color playerWidget = Colors.white;

  Color get debugColor => Colors.primaries[math.Random().nextInt(Colors.primaries.length)];

  /// 定义颜色 end

  MyThemeWidget({
    Key? key,
    required child,
    this.pageTitle = const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    this.cardTitle = const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    this.categoryTitle =
        const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
    this.priceText = const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    this.specialPriceText = const TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.deepOrange),
    this.ownerInfoText = const TextStyle(fontSize: 5, color: Colors.white10),
    this.ownerNameText = const TextStyle(fontSize: 10, color: primary),
    this.videoDescText = const TextStyle(fontSize: 6, color: Colors.white10),
    this.videoTitleText = const TextStyle(fontSize: 10),
    this.videoWidgetText = const TextStyle(fontSize: 10, color: Colors.white70),
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
        oldWidget.categoryTitle != categoryTitle ||
        oldWidget.priceText != priceText;
  }

  static MyThemeWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyThemeWidget>();
  }
}
