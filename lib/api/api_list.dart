class HostInfo {
  static const listKeyItem = "item";

  //登陆
  static const passport = "https://passport.bilibili.com";
  //api
  static const api = "https://api.bilibili.com";
}

enum BizCode {
  success(code: 0, desc: "成功"),
  qrcodeInvalid(code: 86038, desc: "二维码已失效"),
  qrcodeScanned(code: 86090, desc: "二维码已扫码未确认"),
  qrcodeNotScanned(code: 86101, desc: "未扫码"),
  unknown(code: 9999, desc: "unknown");

  const BizCode({required this.code, required this.desc});

  final int code;
  final String desc;
}
/// 鉴权接口
enum ApiAuth {
  genQRCode(
      api: "${HostInfo.passport}/x/passport-login/web/qrcode/generate",
      desc: "申请二维码(web端) 密钥超时为180秒"),
  pollQRCode(
      api: "${HostInfo.passport}/x/passport-login/web/qrcode/poll",
      desc: "查询二维码扫码状态"),
  ;

  const ApiAuth({required this.api, required this.desc});

  final String api;
  final String desc;
}
/// 主页接口
enum ApiHome {
  getRecommendedVideos(
      api: "${HostInfo.api}/x/web-interface/index/top/rcmd", desc: "获取主页推荐的视频"),
  ;

  const ApiHome({required this.api, required this.desc});

  final String api;
  final String desc;
}

enum ApiVideo{

  /// test: BV16X4y1x7q6
  getDetail(
    api: "${HostInfo.api}/x/web-interface/view",
    desc: "视频详细信息"
  ),;


  const ApiVideo({required this.api, required this.desc});

  final String api;
  final String desc;
}

/// 流接口
// enum ApiStream {
//   getRecommendedVideos(
//       api: "${HostInfo.api}/x/web-interface/index/top/rcmd", desc: "获取主页推荐的视频"),
//   ;
//
//   const ApiStream({required this.api, required this.desc});
//
//   final String api;
//   final String desc;
// }

