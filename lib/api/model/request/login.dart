/// 查询二维码请求
class QrcodePollReq {
  final String qrcodeKey;

  QrcodePollReq(this.qrcodeKey);

  toJson() => {
    "qrcode_key": qrcodeKey
  };
}