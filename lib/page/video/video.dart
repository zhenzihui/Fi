import 'package:fi/api/client.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/api.dart';
import 'package:fi/component/home.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/component/comment/comment.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/comment/comment_detail.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoInfoPage extends StatelessWidget {
  final VideoDetail data;

  const VideoInfoPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);

    return ApiBuilder(
      BClient.getVideoDetail(data.bvId),
      waiting: PU.loading,
      builder: (context, detail) {
        return VideoListTabView(tabs: {
          Text(
            "简介",
            style: myTheme?.cardTitle,
            textAlign: TextAlign.center,
          ): VideoAddonInfo2(
            data: detail,
          ),
          Text(
            "评论",
            style: myTheme?.cardTitle,
            textAlign: TextAlign.center,
          ): VideoCommentComponent(
              oId: detail.bvId,
              onItemTap: (rpId) => showModalBottomSheet(
                  enableDrag: false,
                  context: context,
                  builder: (context) => CommentDetailPage(
                        rpId: rpId,
                        bvId: detail.bvId,
                      ))),
        });
      }
    );
  }
}
