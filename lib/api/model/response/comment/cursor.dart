///
/// 游标信息
///
class CommentCursor {
/*
{
  "next_offset": "{\"type\":1,\"direction\":1,\"session_id\":\"1734094807137145\",\"data\":{}}"
}
*/

  String? nextOffset;

  CommentCursor({
    this.nextOffset,
  });

  CommentCursor.fromJson(Map<String, dynamic> json) {
    nextOffset = json['next_offset']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['next_offset'] = nextOffset;
    return data;
  }
}

class CommentPageCursor {
/*
{
  "is_begin": true,
  "prev": 0,
  "next": 0,
  "is_end": false,
  "mode": 3,
  "mode_text": "",
  "all_count": 499,
  "support_mode": [
    2
  ],
  "name": "热门评论",
  "pagination_reply": {
    "next_offset": "{\"type\":1,\"direction\":1,\"session_id\":\"1734094807137145\",\"data\":{}}"
  },
  "session_id": "1734094807137145"
}
*/

  bool? isBegin;
  int? prev;
  //下一个页
  int? next;
  //没有更多了
  bool? isEnd;
  int? mode;
  String? modeText;
  /// 全部评论条数
  int? allCount;
  List<int?>? supportMode;
  String? name;
  CommentCursor? paginationReply;
  String? sessionId;

  CommentPageCursor({
    this.isBegin,
    this.prev,
    this.next,
    this.isEnd,
    this.mode,
    this.modeText,
    this.allCount,
    this.supportMode,
    this.name,
    this.paginationReply,
    this.sessionId,
  });

  CommentPageCursor.fromJson(Map<String, dynamic> json) {
    isBegin = json['is_begin'];
    prev = int.tryParse(json['prev']?.toString() ?? '');
    next = int.tryParse(json['next']?.toString() ?? '');
    isEnd = json['is_end'];
    mode = int.tryParse(json['mode']?.toString() ?? '');
    modeText = json['mode_text']?.toString();
    allCount = int.tryParse(json['all_count']?.toString() ?? '');
    if (json['support_mode'] != null && (json['support_mode'] is List)) {
      final v = json['support_mode'];
      final arr0 = <int>[];
      v.forEach((v) {
        final vi = int.tryParse(v.toString() ?? '');
        if (vi != null) {
          arr0.add(vi);
        }
      });
      supportMode = arr0;
    }
    name = json['name']?.toString();
    paginationReply =
        (json['pagination_reply'] != null && (json['pagination_reply'] is Map))
            ? CommentCursor.fromJson(json['pagination_reply'])
            : null;
    sessionId = json['session_id']?.toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['is_begin'] = isBegin;
    data['prev'] = prev;
    data['next'] = next;
    data['is_end'] = isEnd;
    data['mode'] = mode;
    data['mode_text'] = modeText;
    data['all_count'] = allCount;
    if (supportMode != null) {
      final v = supportMode;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v);
      }
      data['support_mode'] = arr0;
    }
    data['name'] = name;
    if (paginationReply != null) {
      data['pagination_reply'] = paginationReply!.toJson();
    }
    data['session_id'] = sessionId;
    return data;
  }
}
