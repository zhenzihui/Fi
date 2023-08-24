import 'package:fi/api/client.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

///视频播放器 (竖屏)
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
        Uri.parse(widget.playUrl.urlList[0].url??""),
        httpHeaders: header)
      ..initialize().then((value) {
        setState(() {
          _controller.setLooping(true);
          _controller.play();
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BVideoPlayerController(
      controller: _controller,
    );
  }
}

///播放控件
class BVideoPlayerController extends StatelessWidget {
  final VideoPlayerController controller;

  const BVideoPlayerController({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final videoRatio = controller.value.aspectRatio;

    return SafeArea(
      child: LayoutBuilder(builder: (context, constraint) {
        return AspectRatio(
            aspectRatio: videoRatio,
            child: SizedBox(
                width: math.max(
                    constraint.maxWidth, constraint.maxHeight * videoRatio),
                child: Stack(children: [
                  VideoPlayer(controller),
                  Align(
                      alignment: Alignment.bottomCenter,
                      heightFactor: 80,
                      child: ProgressController(
                        controller: controller,
                      ))
                ])));
      }),
    );
  }
}

class ProgressController extends StatelessWidget {
  final VideoPlayerController controller;

  const ProgressController({super.key, required this.controller});

  bool get isPlaying => controller.value.isPlaying;

  IconData get playIconData => isPlaying ? Icons.pause : Icons.play_arrow;

  _formatTime(Duration duration) =>
      duration.toString().split('.').first.padLeft(8, "0");

  //获取最终的播放按钮
  Widget get playerIcon => GestureDetector(
        onTap: _handleTapPlay,
        child: ListenableBuilder(
          builder: (context, _) {
            return Icon(
              playIconData,
              color: Colors.white,
            );
          },
          listenable: controller,
        ),
      );

  _handleTapPlay() =>
      controller.value.isPlaying ? controller.pause() : controller.play();

  @override
  Widget build(BuildContext context) {
    ValueNotifier<double> localProgress = ValueNotifier(0);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        playerIcon,
        ProgressBar(
          progress: localProgress,
        ),
        ListenableBuilder(
            listenable: controller,
            builder: (context, _) {
              return FutureBuilder(
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return PU.loading;
                  }
                  final data = snapshot.data!;
                  Future(() {
                    localProgress.value =
                        data.inSeconds / controller.value.duration.inSeconds;
                  });

                  return Text(
                      "${_formatTime(data)}/${_formatTime(controller.value.duration)}",
                  );
                },
                future: controller.position,
              );
            }),
        Icon(
          Icons.fullscreen,
          color: Colors.white,
        )
      ],
    );
  }
}

///进度条
class ProgressBar extends StatelessWidget {
  final ValueNotifier<double> progress;

  const ProgressBar({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;

    final totalWidth = MediaQuery.sizeOf(context).width / 3;
    return SizedBox(
        height: SU.rpx(5),
        width: totalWidth,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: myTheme.smallBorderRadius),
            ),
            ListenableBuilder(
                listenable: progress,
                builder: (context, _) {
                  return Container(
                    width: totalWidth * progress.value,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: myTheme.smallBorderRadius),
                  );
                })
          ],
        ),
      );
  }
}
