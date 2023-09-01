import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/comment.dart';
import 'package:fi/api/model/response/comment/comment.dart';
import 'package:fi/component/common/text.dart';
import 'package:fi/component/video/reply.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
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
    return BClient.getComments(req).then((value) {
      if (value.replies.isEmpty) {
        return;
      }
      showList.addAll(value.replies);
      req = req.copyWith(value.cursor?.next ?? 0);
      replyStream.add(1);
    });
  }

  Future _refresh() {
    req = req.copyWith(0);

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

/// 最外层
class ReplyMessage extends StatelessWidget {
  final Reply reply;

  const ReplyMessage({super.key, required this.reply});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: myTheme?.largeBorderRadius,
              child: Image.network(
                reply.member?.avatar ?? "",
                width: SU.rpx(80),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// 名字
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            reply.member?.uName ?? "",
                            style: myTheme?.commentUserText
                                .copyWith(fontSize: 12, color: Colors.black87),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            reply.replyControl?.timeDesc ?? "",
                            style: myTheme?.commentUserText,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            reply.replyControl?.location ?? "",
                            style: myTheme?.commentUserText,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    reply.content?.message ?? "",
                    maxLines: reply.content?.maxLine,
                  ),
                  reply.replies.isEmpty
                      ? Container()
                      : SimpleReplyCard(reply: reply)
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

/// 回复块
class SimpleReplyCard extends StatelessWidget {
  ///最外层的reply
  final Reply reply;

  const SimpleReplyCard({super.key, required this.reply});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);

    return GestureDetector(
      onTap: () => {
        showModalBottomSheet(
            context: context,
            builder: (context) => FlutterLogo())
      },
      child: Container(
        padding: EdgeInsets.all(myTheme?.paddingDefault ?? 0),
        decoration: BoxDecoration(
            color: MyThemeWidget.replyBackground,
            borderRadius: myTheme?.smallBorderRadius),
        child: Column(
          children: [
            ...reply.replies
                .take(3)
                .map((e) => SimpleReplyItem(reply: e))
                .toList(),
            reply.replies.length >= 3
                ? Link(reply.replyControl?.subReplyEntryText ?? "")
                : Container()
          ],
        ),
      ),
    );
  }
}

/// 简单回复，最外层展示几条回复
class SimpleReplyItem extends StatelessWidget {
  final Reply reply;

  const SimpleReplyItem({super.key, required this.reply});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Link(reply.member?.uName ?? ""),
        Expanded(
          child: Text(
            ": ${reply.content?.message}",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
