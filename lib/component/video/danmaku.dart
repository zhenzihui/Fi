import 'package:fi/api/client.dart';
import 'package:fi/api/model/protobuf/dm_define.pb.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/component/api.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;
class DanmakuTest extends StatelessWidget {
  final num cId;

  const DanmakuTest({super.key, required this.cId});

  @override
  Widget build(BuildContext context) {
    final getDanmakuReq = GetDanmakuReq(type: 1, oId: cId, segmentIndex: 1);
    final myTheme = MyThemeWidget.of(context);
    return ApiBuilder(BClient.getVideoDanmaku(getDanmakuReq),
        builder: (context, data) {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          final el = data.elems[index];

          return Text(
            el.content,
            style: TextStyle(
                color: Color(int.parse("0xff${el.color.toRadixString(16)}"))),
          );
        },
        itemCount: data.elems.length,
      );
    });
  }
}

/// 弹幕最外层
class DanmakuOverlay extends StatefulWidget {
  final VideoPlayerController playerController;

  const DanmakuOverlay(
      {super.key, required this.playerController});

  @override
  State<DanmakuOverlay> createState() => _DanmakuOverlayState();
}

class _DanmakuOverlayState extends State<DanmakuOverlay>
    with SingleTickerProviderStateMixin {
  late final _playerCtr = widget.playerController;
  final double speed = 1;

  //动画持续6分钟，完成后刷新数据
  late final AnimationController danmakuAnimeCtr =
      AnimationController(duration: const Duration(minutes: 6), vsync: this);

  late final danmakuTween = Tween(begin: 0.0, end: -100.0);

  late Animation<double> danmakuAnimation =
      danmakuTween.animate(danmakuAnimeCtr);

  //弹幕之间的gap
  final double gap = 300;

  int currentPlayProgress = 0;

  @override
  void initState() {
    super.initState();
    _playerCtr.addListener(() {
      currentPlayProgress = _playerCtr.value.position.inMilliseconds;
      //如果播放暂停了，弹幕动画也暂停
      if (!_playerCtr.value.isPlaying) {
        danmakuAnimeCtr.stop();
      }
      //如果播放器在播放就播放弹幕动画
      if (_playerCtr.value.isPlaying) {
        danmakuAnimeCtr.forward();
      }
    });
    danmakuAnimeCtr.addListener(() {
      if (danmakuAnimeCtr.isCompleted) {}
    });
    // danmakuAnimeCtr.forward();
  }

  @override
  void dispose() {
    danmakuAnimeCtr.dispose();
    super.dispose();
  }

  List<DanmakuItem> _buildDanmakuItem(Offset offset, List<DanmakuElem> list) {
    double originalOffsetX = 0;
    return list.map((e) {
      final item = DanmakuItem(
          initialOffset: Offset(originalOffsetX, 0),
          offset: offset,
          id: e.id.toInt(),
          speedFactor: e.progress > currentPlayProgress? 200 : 0,
          child: Text(
            e.content,
            style: TextStyle(
                color: Color(int.parse("0xff${e.color.toRadixString(16)}"))),
          ));

      originalOffsetX += gap;
      return item;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ApiBuilder(
        BClient.getVideoDanmaku(GetDanmakuReq(type: 1, oId: UniPlayerController.currentCId!)),
        builder: (ctx, data) {
          return AnimatedBuilder(
              animation: danmakuAnimation,
              builder: (context, _) {
                return Stack(
                  children: _buildDanmakuItem(
                      Offset(danmakuAnimation.value, 0), data.elems),
                );
              });
        }
      );
    });
  }
}

/// 单个弹幕
class DanmakuItem extends StatelessWidget {
  final num id;
  final Widget child;
  final Offset initialOffset;
  final double speedFactor;
  final Offset offset;
  final Function(num id)? onOut;

  const DanmakuItem({
    super.key,
    required this.child,
    required this.initialOffset,
    required this.offset,
    required this.id,
    this.speedFactor = 200,
    this.onOut,
  });

  double get _left {
    final offsetX = initialOffset.dx + (offset.dx * speedFactor);
    if (offsetX - 100 < 0) {
      onOut?.call(id);
    }
    return offsetX;
  }

  @override
  Widget build(BuildContext context) {

    return Positioned(
      top: initialOffset.dy + (offset.dy * speedFactor),
      left: _left,
      child: child,
    );
  }
}
