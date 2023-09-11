import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/video/player.dart';
import 'package:fi/page/video/video.dart';
import 'package:fi/util/page.dart';
import 'package:fi/util/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

///播放器页面
class VideoPlayerPage extends StatefulWidget {
  final VideoDetail data;

  const VideoPlayerPage({super.key, required this.data});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState2();
}

class _VideoPlayerPageState2 extends State<VideoPlayerPage> {
  late VideoDetail data = widget.data;

  Future<VideoPlayerController> _initPlayer(num cId, String bvId) {
    return BClient.getVideoPlayUrl(GetVideoPlayUrlReq(cId: cId, bvId: bvId))
        .then((urlInfo) {
      return UniPlayerController.initByUrl(urlInfo.urlList[0].url ?? "", cId);
    });
  }

  @override
  void initState() {
    Future.delayed(
        const Duration(milliseconds: 500),
        () => SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
            overlays: []));
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    UniPlayerController.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: FutureBuilder(
              future: _initPlayer(data.cId!, data.bvId),
              builder: (context, snap) {
                if (snap.connectionState != ConnectionState.done ||
                    !snap.hasData) {
                  return PU.loading;
                }
                return const BVideoPlayerController2();
              }),
        ),
        Expanded(
          flex: 7,
            child: VideoInfoPage(data: data))
      ],
    ));
  }
}

class PlayerBoxDelegate extends SliverPersistentHeaderDelegate {
  final double maxWidth;
  late VideoPlayerController videoController =
      UniPlayerController.getInstance();
  double oldShrink = -1;

  PlayerBoxDelegate({required this.maxWidth});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    oldShrink = shrinkOffset;
    return const BVideoPlayerController2();
  }

  @override
  double get maxExtent => maxWidth / videoController.value.aspectRatio;

  @override
  double get minExtent => maxExtent;

  // videoController.value.isPlaying ? maxExtent : SU.rpx(200);

  @override
  bool shouldRebuild(covariant PlayerBoxDelegate oldDelegate) {
    return false;
  }
}
