import 'dart:async';

import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

///播放控件 注入控制器
class BVideoPlayerController2 extends StatelessWidget {
  //被sliver header压缩的值
  final double shrink;

  const BVideoPlayerController2({super.key, this.shrink = 0});

  @override
  Widget build(BuildContext context) {
    final controller = UniPlayerController.getInstance();

    final videoRatio = controller.value.aspectRatio;

    final widgetVisibility = ValueNotifier<bool>(true);
    final progress = ValueNotifier<double>(0.0);

    Timer? hideTimer;

    handleProgress() => controller.position.then((value) => progress.value =
        (value?.inMilliseconds ?? 0.0) /
            controller.value.duration.inMilliseconds);
    handleAutoHide() {
      if(controller.value.isPlaying && widgetVisibility.value && hideTimer == null) {
        hideTimer = Timer(const Duration(seconds: 3), () {
          widgetVisibility.value = false;
          hideTimer = null;

        });
      }
    }

    controller.addListener(() {
      handleProgress();
      handleAutoHide();
    });

    return SafeArea(
      child: LayoutBuilder(builder: (context, constraint) {
        return Container(
          color: Colors.black,
          child: Stack(children: [
            GestureDetector(
              onVerticalDragUpdate: (detail) => {},
              //双击暂停/播放
              onDoubleTap: () => controller.value.isPlaying
                  ? controller.pause()
                  : controller.play(),
              onTap: () {
                widgetVisibility.value = !widgetVisibility.value;
              },
              child: Align(
                  alignment: Alignment.center,
                  child: AspectRatio(
                      aspectRatio: videoRatio, child: VideoPlayer(controller))),
            ),
            ListenableBuilder(
              builder: (context, _) {
                return Positioned(
                    bottom: widgetVisibility.value? 10 : 0,
                    left: 0,
                    right: 0,
                    child: widgetVisibility.value
                        ? ProgressController(
                            controller: controller,
                          )
                        : ProgressBar(progress: progress));
              },
              listenable: widgetVisibility,
            )
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
                    return Container();
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
