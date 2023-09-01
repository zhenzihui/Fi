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

///获取评论的回复请求
///{
///         "pn": "int: 页码",
///         "ps": "const int: 10",
///         "type": "",
///         "oid": "int: id",
///         "root": "int: 根评论 ID"
///       }
///
///
class GetReplyListReq extends PageReq {
  GetReplyListReq(super.page,
      {required this.root, required this.oId, required this.type});

  final int root;
  final dynamic oId;
  final int type;

  @override
  GetReplyListReq copyWith(int? page,
          {int? pageCount, dynamic oId, int? root}) =>
      GetReplyListReq(page ?? this.page,
          root: root ?? this.root, oId: oId ?? this.oId, type: type);

  @override
  Map<String, dynamic> toJson() =>
      super.toJson()..addAll({"root": root, "oid": oId, "type": type});
}
