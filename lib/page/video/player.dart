import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:fi/component/video/player.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VideoPlayerPage extends StatefulWidget {
  final BaseVideo data;

  const VideoPlayerPage({super.key, required this.data});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: BClient.getVideoPlayUrl(
            GetVideoPlayUrlReq(cId: widget.data.cId.toString(), bvId: widget.data.bvId)),

        builder: (context, snap) {
          if(snap.connectionState != ConnectionState.done || !snap.hasData) {
            return PU.loading;
          } else if (!snap.hasData) {
            return Container();
          }

          return Center(
            child: BVideoPlayer(playUrl: snap.data!),
          );

        },
      ),
    );
  }
}
