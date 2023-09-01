import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/home.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/component/video/comment.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:flutter/cupertino.dart';

class VideoInfoPage extends StatelessWidget {
  final VideoDetail detail;

  const VideoInfoPage({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);

    return VideoListTabView(tabs: {
      Text(
        "简介",
        style: myTheme?.cardTitle,
        textAlign: TextAlign.center,
      ): VideoAddonInfo2(
        baseVideo: detail,
      ),
      Text(
        "评论",
        style: myTheme?.cardTitle,
        textAlign: TextAlign.center,
      ): VideoCommentComponent(
        oId: detail.bvId,
      ),
    });
  }
}
