import 'package:flutter/material.dart';

/// UI适配器
class SU {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double rpxRatio;
  static late ThemeData theme;
  static const double designWidth = 750;

  static bool get isLandscape => screenHeight < screenWidth;

  static bool isLandscapeDynamic(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return size.height < size.width;
  }
  static ValueNotifier<String> appBarTitle = ValueNotifier("home");

  static void initialize(BuildContext context, {uiWidth = designWidth}) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    rpxRatio = screenWidth / uiWidth;
    theme = Theme.of(context);
  }

  static double rpx(double size) => rpxRatio * size;
}
