///查询是否投币返回值
class GetCoinStatResp {
  /// 投币枚数
  num? multiply;
  bool get hasAddCoin => (multiply??0) > 0;

  GetCoinStatResp.fromJson(Map<String, dynamic> raw) {
    multiply = raw['multiply'];
  }
}

///查询是否收藏返回
class GetHasFavouredResp {
  bool? favoured;
  get hasFavoured => favoured??false;

  GetHasFavouredResp.fromJson(Map<String, dynamic> raw) {
    favoured = raw['favoured'];
  }
}