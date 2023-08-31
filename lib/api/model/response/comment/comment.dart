import 'package:fi/api/model/response/comment/cursor.dart';
import 'package:fi/api/model/response/comment/member.dart';
import 'package:fi/util/util.dart';

///评论本体 responseBody.data
class CommentListResp {
  CommentPageCursor? cursor;
  List<Reply>? _replies;

  List<Reply> get replies => _replies ?? [];

  CommentListResp.fromJson(Map<String, dynamic> raw) {
    cursor = JsonUtil<CommentPageCursor>()
        .parse(raw['cursor'], (res) => CommentPageCursor.fromJson(res));
    _replies =
        JsonUtil<Reply>().toList(raw['replies'], (res) => Reply.fromJson(res));
  }
}

/// 评论回复
class Reply {
  int? rpId;
  int? oId;

  //点赞
  int? _like;
  Content? content;
  Member? member;
  List<Reply>? _replies;
  ReplyControl? replyControl;

  List<Reply> get replies => _replies ?? [];

  get like => _like ?? 0;

  Reply.fromJson(Map<String, dynamic> raw) {
    rpId = raw['rpid'];
    oId = raw['oId'];
    _like = raw['like'];
    member =
        JsonUtil<Member>().parse(raw['member'], (res) => Member.fromJson(res));
    content = JsonUtil<Content>()
        .parse(raw['content'], (res) => Content.fromJson(res));
    _replies =
        JsonUtil<Reply>().toList(raw['replies'], (res) => Reply.fromJson(res));
    replyControl = JsonUtil<ReplyControl>()
        .parse(raw['reply_control'], (res) => ReplyControl.fromJson(res));
  }
}

/// 回复的文案
class ReplyControl {
  //地区
  String? location;

  //共XX条回复
  String? subReplyEntryText;

  //日期
  String? timeDesc;

  ReplyControl();

  ReplyControl.fromJson(Map<String, dynamic> raw) {
    subReplyEntryText = raw['sub_reply_entry_text'];
    location = raw['location'];
    timeDesc = raw['time_desc'];
  }
}

/// 文本内容
class Content {
  String? message;
  int? _maxLine;

  int get maxLine => _maxLine ?? 2;

  Content();

  Content.fromJson(Map<String, dynamic> raw) {
    message = raw['message'];
    _maxLine = raw['max_line'];
  }
}
