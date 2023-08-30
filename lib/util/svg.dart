import 'package:fi/util/adaptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SVGHelper {
  static Widget load(String path, [Widget fallback = const Icon(Icons.error)]) {

    final assets = SvgPicture.asset("assets/icon/$path", placeholderBuilder: (context) {
      return fallback;
    },);


    return assets;
  }
  static Widget loadZoneIcon(String name, [Widget fallback = const Icon(Icons.error)]) {
    return load("zone/$name.svg", fallback);
  }
}