import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/component/video/player.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//播放器页面
class VideoPlayerPage extends StatefulWidget {
  final BaseVideo data;

  const VideoPlayerPage({super.key, required this.data});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late BaseVideo data = widget.data;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: []);
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
      body: Column(
        children: [
          VideoLoader(cId: data.cId.toString(), bvId: data.bvId),
          Expanded(flex: 6, child: VideoAddonInfo(baseVideo: data))
        ],
      ),
    );
  }
}

//包装Future加载路由
class VideoLoader extends StatelessWidget {
  final String cId;
  final String bvId;

  const VideoLoader({super.key, required this.cId, required this.bvId});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BClient.getVideoPlayUrl(GetVideoPlayUrlReq(cId: cId, bvId: bvId)),
      builder: (context, snap) {
        debugPrint("get video play url: ${snap.connectionState}");
        if (snap.connectionState != ConnectionState.done || !snap.hasData) {
          return PU.loading;
        } else if (snap.hasData) {
          return BVideoPlayer(playUrl: snap.data!);
        }
        return Container();
      },
    );
  }
}
