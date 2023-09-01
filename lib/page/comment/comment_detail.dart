import 'package:fi/api/model/response/comment/comment.dart';
import 'package:fi/component/comment/comment.dart';
import 'package:fi/component/comment/reply.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:flutter/material.dart';

///评论详情，展示一级评论和下面的回复
class CommentDetailPage extends StatelessWidget {
  ///一级评论
  final int rpId;
  final String bvId;

  const CommentDetailPage({super.key, required this.rpId, required this.bvId});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Reply?> rootReply = ValueNotifier(null);

    final myTheme = MyThemeWidget.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(borderRadius: myTheme?.topBorderRadius),
        child: Padding(
          padding: EdgeInsets.all(myTheme!.paddingMedium),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("评论详情"),
                ],
              ),
              ListenableBuilder(
                  listenable: rootReply,
                  builder: (context, _) {
                    if (rootReply.value != null) {
                      return ReplyMessage(
                        reply: rootReply.value!,
                      );
                    } else {
                      return Container();
                    }
                  }),

              SizedBox(
                height: 30,
              ),

              Row(
                children: [
                  Text("回复")
                ],
              ),
              Expanded(
                  child: CommentReplyComponent(
                root: rpId,
                oId: bvId,
                onReady: (r) => rootReply.value = r,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
