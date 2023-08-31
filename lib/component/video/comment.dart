import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/comment.dart';
import 'package:fi/api/model/response/comment/comment.dart';
import 'package:fi/util/adaptor.dart';
import 'package:flutter/material.dart';

/// 评论最外层
class VideoCommentComponent extends StatefulWidget {
  final dynamic oId;
  final int commentType;

  const VideoCommentComponent({super.key, this.oId, this.commentType = 1});

  @override
  State<VideoCommentComponent> createState() => _VideoCommentComponentState();
}

class _VideoCommentComponentState extends State<VideoCommentComponent> {
  late GetCommentListReq req =
      GetCommentListReq(widget.oId, 0, 20, type: widget.commentType);

  final replyStream = StreamController();
  final scrollCtr = ScrollController();

  final List<Reply> showList = [];

  @override
  void initState() {
    super.initState();
    _getMore();
    scrollCtr.addListener(() {
      if(scrollCtr.offset == scrollCtr.position.maxScrollExtent) {
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

    return BClient.getComments(req).then((value) {
      if(value.replies.isEmpty) {
        return;
      }
      showList.addAll(value.replies);
      req = req.copyWith(value.cursor?.next??0);
      replyStream.add(1);
    });
  }

  Future _refresh() {
    req = req.copyWith(0);

    return _getMore();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
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
          }
        ),
        onRefresh: () => _refresh());
  }
}

/// message
class ReplyMessage extends StatelessWidget {
  final Reply reply;

  const ReplyMessage({super.key, required this.reply});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              reply.member?.avatar ?? "",
              width: SU.rpx(50),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// 名字
                  Row(
                    children: [Text(reply.member?.uName ?? "")],
                  ),
                  Text(reply.content?.message??"", maxLines: reply.content?.maxLine,)
                ],
              ),
            )
          ],
        ),
        const Divider()
      ],
    );
  }
}

///
