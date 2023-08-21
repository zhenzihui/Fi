import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:fi/component/video/player.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';

class VideoPlayerPage extends StatelessWidget {
  final BaseVideo data;

  const VideoPlayerPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: BClient.getVideoPlayUrl(
            GetVideoPlayUrlReq(cId: data.cId.toString(), bvId: data.bvId)),

        builder: (context, snap) {
          if(snap.connectionState != ConnectionState.done || !snap.hasData) {
            return PU.loading;
          } else if (!snap.hasData) {
            return Container();
          }

          return Center(
            child: Column(
              children: [
                BVideoPlayer(playUrl: snap.data!),
                Text(data.title)
              ],
            ),
          );

        },
      ),
    );
  }
}
