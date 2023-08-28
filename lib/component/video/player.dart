import 'package:fi/api/client.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:fi/util/player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

///播放控件 注入控制器
class BVideoPlayerController2 extends StatelessWidget {

  const BVideoPlayerController2({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UniPlayerController.getInstance();

    final videoRatio = controller.value.aspectRatio;

    return SafeArea(
      child: LayoutBuilder(builder: (context, constraint) {
        return Container(
          color: Colors.black,
          child: Stack(children: [
            Align(
              alignment: Alignment.center,
                child: AspectRatio(aspectRatio: videoRatio, child: VideoPlayer(controller))),
            Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 80,
                child: ProgressController(
                  controller: controller,
                ))
          ]),
        );
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
                color: Colors.white10, borderRadius: myTheme.smallBorderRadius),
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
