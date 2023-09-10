import 'dart:convert';

import 'package:crypto/crypto.dart' as crypto;
import 'package:flutter/cupertino.dart';

class ApiUtils {
  static const appKeyKey = 'appkey';
  static const appSecretKey = 'appsec';
  static const signKey = 'sign';

  static sign<T>(Map<String, String> content,
      {String appKey = "1d8b6e7d45233436",
      String appSecret = "560c52ccd288fed045859ed18bffd973",
      }) {
    //在待签名内容中加入appkey
    content.update(appKeyKey, (value) => appKey, ifAbsent: () => appKey);

    //对map进行排序
    final sortedMap = content.sortKey();
    final encoded = sortedMap.urlEncodedValue;
    final sign = "$encoded$appSecret".md5;
    sortedMap.update(signKey, (value) => sign, ifAbsent: () => sign);

    if(T == String) {
      return sortedMap.urlEncodedValue;
    }
    return sortedMap;
  }

  static String jsonToForm(Map<String, dynamic> raw) {
    return raw.keys.map((k) => "$k=${raw[k]}")
        .reduce((p, n) => "$p&$n");
  }
}

extension on Map<String, String> {
  //排序
  Map<String, String> sortKey() => Map.fromEntries(entries.toList()
    ..sort((previous, next) => previous.key.compareTo(next.key)));

  //url encode
  String get urlEncodedValue => entries
      .map((item) =>
          "${Uri.encodeComponent(item.key)}=${Uri.encodeComponent(item.value)}")
      .join("&");
}

extension on String {
  String get md5 => crypto.md5.convert(utf8.encode(this)).toString();
}
