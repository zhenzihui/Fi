import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/home.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/component/video/comment.dart';
import 'package:flutter/cupertino.dart';

class VideoInfoPage extends StatelessWidget {
  final VideoDetail detail;

  const VideoInfoPage({super.key, required this.detail});
  @override
  Widget build(BuildContext context) {
    return VideoListTabView(tabs: {
      const Text("简介"): VideoAddonInfo2(baseVideo: detail,),
      const Text("评论"): VideoCommentComponent(oId: detail.bvId,),
    });
  }

}