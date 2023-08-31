import 'package:fi/util/util.dart';

///评论区显示的用户信息
class Member {
  ///member id
  String? mId;
  String? uName;
  String? sex;
  String? sign;
  String? avatar;

  ///头像框
  Pendant? pendant;

  Member(
      {this.mId, this.uName, this.sex, this.sign, this.avatar, this.pendant});

  Member.fromJson(Map<String, dynamic> raw) {
    mId = raw['mid'];
    uName = raw['uname'];
    sex = raw['sex'];
    sign = raw['sign'];
    avatar = raw['avatar'];
    pendant = JsonUtil<Pendant>()
        .parse(raw['pendant'], (res) => Pendant.fromJson(res));
  }
}

///头像框
class Pendant {
  String? image;
  String? imageEnhance;

  Pendant.fromJson(Map<String, dynamic> raw) {
    image = raw['image'];
    imageEnhance = raw['image_enhance'];
  }

  Pendant(this.image, this.imageEnhance);
}
