///登陆相关返回值

///获取登陆二维码
class GenQrCodeResp {
  final String url;
  final String qrcodeKey;

  GenQrCodeResp({required this.url, required this.qrcodeKey});

  static GenQrCodeResp fromJson(Map<String, dynamic> raw) => GenQrCodeResp(url: raw['url'], qrcodeKey: raw['qrcode_key']);

}
///扫码结果
class QrcodePollResp {
  String? url;
  String? refreshToken;
  int? timestamp;
  int? code;
  String? message;

  QrcodePollResp(
      {this.url, this.refreshToken, this.timestamp, this.code, this.message});

  QrcodePollResp.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    refreshToken = json['refresh_token'];
    timestamp = json['timestamp'];
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['refresh_token'] = refreshToken;
    data['timestamp'] = timestamp;
    data['code'] = code;
    data['message'] = message;
    return data;
  }
}