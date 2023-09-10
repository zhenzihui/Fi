import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/cupertino.dart';

class PageReq {
  final int page;
  final int? pageCount;

  PageReq copyWith(int? page, {int? pageCount}) =>
      PageReq(page ?? this.page, pageCount ?? this.pageCount);

  PageReq(this.page, [this.pageCount = 20]);

  Map<String, dynamic> toJson() => {'pn': page, 'ps': pageCount};
}
//带csrf的请求
class CsrfReq {
  final String csrf;

  CsrfReq(): csrf=CredentialHelper.getInstance()?.csrf??"";
  @mustCallSuper
  Map<String, dynamic> toJson() => {
    "csrf": csrf
  };
}

//登陆后返回的cookie
class Credential {
  String? sessData;
  String? biliJct;
  String? dedeUserId;
  String? dedeUserIdCkMd5;
  String? sid;

  Credential.setCookie(List<String> value) {

    for (var item in value) {
      item.split(";").where((e) => e.contains("="))
          .forEach((pair) {
        final k = pair.split("=")[0].trim();
        final v = pair.split("=")[1].trim();
        switch (k) {
          case 'SESSDATA':
            sessData = v;
            break;
          case 'bili_jct':
            biliJct = v;
            break;
          case 'DedeUserID':
            dedeUserId = v;
            break;
          case 'DedeUserID__ckMd5':
            dedeUserIdCkMd5 = v;
            break;
          case 'sid':
            sid = v;
            break;
        }
      });
    }

    // value
    //     .reduce((p, n) => p + n)
    //     .split(";")
    //     .where((e) => e.contains("="))
    //     .forEach((pair) {
    //   final k = pair.split("=")[0].trim();
    //   final v = pair.split("=")[1].trim();
    //   switch (k) {
    //     case 'SESSDATA':
    //       sessData = v;
    //       break;
    //     case 'bili_jct':
    //       biliJct = v;
    //       break;
    //     case 'DedeUserID':
    //       dedeUserId = v;
    //       break;
    //     case 'DedeUserID__ckMd5':
    //       dedeUserIdCkMd5 = v;
    //       break;
    //     case 'sid':
    //       sid = v;
    //       break;
    //   }
    // });
  }

  String get cookie =>
      "SESSDATA=$sessData;bili_jct=$biliJct;DedeUserID=$dedeUserId;DedeUserID__ckMd5=$dedeUserIdCkMd5;sid=$sid";

  Map<String, String> get header => {"cookie": cookie};
  String get csrf => biliJct!;
  Credential(
      {this.sessData,
      this.biliJct,
      this.dedeUserId,
      this.dedeUserIdCkMd5,
      this.sid});
}

class CredentialHelper {
  static Credential? _c;

  static Credential initialize(List<String> value) {
    _c = Credential.setCookie(value);
    return _c!;
  }

  static Credential? getInstance() => _c;
}
