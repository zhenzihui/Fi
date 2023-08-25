import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/component/video/player.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:fi/util/player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

//播放器页面
class VideoPlayerPage extends StatefulWidget {
  final BaseVideo data;

  const VideoPlayerPage({super.key, required this.data});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState2();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late BaseVideo data = widget.data;

  Future<VideoPlayerController> _initPlayer(String cId, String bvId) {
    return BClient.getVideoPlayUrl(GetVideoPlayUrlReq(cId: cId, bvId: bvId))
        .then((urlInfo) {
      return UniPlayerController.initByUrl(urlInfo.urlList[0].url ?? "");
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();

    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: _initPlayer(data.cId.toString(), data.bvId),
              builder: (context, snap) {
                if (snap.connectionState != ConnectionState.done ||
                    !snap.hasData) {
                  return PU.loading;
                }
                return const Expanded(
                    flex: 3000, child: BVideoPlayerController2());
              }),
          Expanded(
              flex: 6000,
              child: VideoAddonInfo(
                baseVideo: data,
                controller: scrollController,
              ))
        ],
      ),
    );
  }
}

class _VideoPlayerPageState2 extends State<VideoPlayerPage> {
  late BaseVideo data = widget.data;

  Future<VideoPlayerController> _initPlayer(String cId, String bvId) {
    return BClient.getVideoPlayUrl(GetVideoPlayUrlReq(cId: cId, bvId: bvId))
        .then((urlInfo) {
      return UniPlayerController.initByUrl(urlInfo.urlList[0].url ?? "");
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          FutureBuilder(
              future: _initPlayer(data.cId.toString(), data.bvId),
              builder: (context, snap) {
                if (snap.connectionState != ConnectionState.done ||
                    !snap.hasData) {
                  return PU.loading;
                }
                return SliverPersistentHeader(
                    pinned: true,
                    floating: true,
                    delegate: PlayerBoxDelegate(
                        maxWidth: MediaQuery.sizeOf(context).width,));
              }),
          SliverToBoxAdapter(child: VideoAddonInfo2(baseVideo: data))
        ],
      ),
    );
  }
}

class PlayerBoxDelegate extends SliverPersistentHeaderDelegate {
  final double maxWidth;
  late VideoPlayerController videoController = UniPlayerController.getInstance();
  double oldShrink = -1;

  PlayerBoxDelegate({
    required this.maxWidth,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    debugPrint("shrinkOffset: ${shrinkOffset}");
    debugPrint("overlapsContent: ${overlapsContent}");
    oldShrink = shrinkOffset;

    return const BVideoPlayerController2();
  }

  @override
  double get maxExtent => maxWidth / videoController.value.aspectRatio;

  @override
  double get minExtent => videoController.value.isPlaying? maxExtent: SU.rpx(200);

  @override
  bool shouldRebuild(covariant PlayerBoxDelegate oldDelegate) {
    return maxWidth != oldDelegate.maxWidth;
  }
}
