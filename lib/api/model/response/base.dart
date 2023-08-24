
//返回单个值的最外层
import 'package:flutter/cupertino.dart';

class BizResponse {
  final num code;
  final String message;
  final num? ttl;
  final dynamic data;

  BizResponse(
      {required this.code,
      required this.message,
      required this.ttl,
      this.data});

  static BizResponse fromJson(Map<String, dynamic> raw) {
    return BizResponse(
        code: raw['code'],
        message: raw['message'],
        ttl: raw['ttl'],
        data: raw['data']);
  }
}
