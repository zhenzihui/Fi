import 'package:fi/api/client.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';


class BVideoPlayer extends StatefulWidget {
  final VideoPlayUrl playUrl;

  const BVideoPlayer({super.key, required this.playUrl});

  @override
  State<StatefulWidget> createState() => _BVideoPlayerState();
}

class _BVideoPlayerState extends State<BVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    final header = BClient.globalCookie ?? const <String, String>{};
    _controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.playUrl.urlList[0].url),
        httpHeaders: header)
      ..initialize().then((value) => setState(() {}));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _controller.play();
    return Center(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: VideoPlayer(_controller),
      ),
    );
  }
}
