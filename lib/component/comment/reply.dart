import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/comment.dart';
import 'package:fi/api/model/response/comment/comment.dart';
import 'package:fi/component/comment/comment.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:flutter/material.dart';

/// 评论最外层
class CommentReplyComponent extends StatefulWidget {
  final dynamic oId;

  //源评论id
  final int root;
  final int commentType;

  final Function(Reply? rootReply)? onReady;

  const CommentReplyComponent(
      {super.key, this.oId, this.commentType = 1, required this.root, this.onReady});

  @override
  State<CommentReplyComponent> createState() => _CommentReplyComponentState();
}

class _CommentReplyComponentState extends State<CommentReplyComponent> {
  late GetReplyListReq req = GetReplyListReq(
    1,
    oId: widget.oId,
    root: widget.root,
    type: widget.commentType,
  );

  final replyStream = StreamController();
  final scrollCtr = ScrollController();

  final List<Reply> showList = [];
  ///主评论只加载一次
  bool rootReadyFlag = false;
  @override
  void initState() {
    super.initState();
    _getMore();
    scrollCtr.addListener(() {
      if (scrollCtr.offset == scrollCtr.position.maxScrollExtent) {
        _getMore();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollCtr.dispose();
    replyStream.close();
  }

  Future _getMore() {
    return BClient.getReplies(req).then((value) {
      if (value.replies.isEmpty) {
        return;
      }
      showList.addAll(value.replies);
      req = req.copyWith(req.page+1);
      replyStream.add(1);
      if(!rootReadyFlag) {
        Future(() => widget.onReady?.call(value.root));
        rootReadyFlag = true;
      }
    });
  }

  Future _refresh() {
    req = req.copyWith(1);

    return _getMore();
  }

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);

    return Padding(
      padding: EdgeInsets.only(
          left: myTheme!.paddingDefault, right: myTheme.paddingDefault),
      child: RefreshIndicator(
          child: StreamBuilder(
              stream: replyStream.stream,
              builder: (context, _) {
                return ListView.builder(
                    controller: scrollCtr,
                    itemCount: showList.length,
                    // itemExtent: SU.rpx(100),
                    itemBuilder: (context, index) {
                      final data = showList[index];
                      return ReplyMessage(reply: data);
                    });
              }),
          onRefresh: () => _refresh()),
    );
  }
}
