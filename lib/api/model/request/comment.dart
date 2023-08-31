import 'package:fi/api/model/request/base.dart';

///查询评论请求
class GetCommentListReq extends PageReq {
  ///可以是字符串 数字 avId或bvId等
  final dynamic oId;

  /// 稿件的类型
  final int type;

  /// 排序
  final int mode;

  @override
  GetCommentListReq copyWith(int? page, {int? pageCount, dynamic oId}) {
    return GetCommentListReq(
        oId ?? this.oId, page ?? super.page, pageCount ?? super.pageCount);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "oid": oId,
      "next": page,
      "mode": mode,
      "type": type,
    };
  }

  GetCommentListReq(this.oId, super.page, super.pageCount,
      {this.type = 1, this.mode = 1});
}
