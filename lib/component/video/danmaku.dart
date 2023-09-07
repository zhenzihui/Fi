import 'dart:async';

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
                    color: Color(
                        int.parse("0xff${el.color.toRadixString(16)}"))),
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

  const DanmakuOverlay({super.key, required this.playerController});

  @override
  State<DanmakuOverlay> createState() => _DanmakuOverlayState();
}

class _DanmakuOverlayState extends State<DanmakuOverlay>
    with SingleTickerProviderStateMixin {
  late final _playerCtr = widget.playerController;

  late StreamController<DanmakuElem> danmakuStream;
  List<DanmakuFlyItem> danmakuItemList = List.empty(growable: true);
  DanmakuItemController allDanmakuController = DanmakuItemController.init(isPlaying: true);
  @override
  void initState() {
    super.initState();
    if (danmakuItemList.isNotEmpty) {
      danmakuItemList.removeRange(0, danmakuItemList.length - 1);
    }
    UniDanmakuController.initialize(UniPlayerController.currentCId!, 1);
    danmakuStream = UniDanmakuController.getInstance();
    _playerCtr.addListener(() {
      if(!_playerCtr.value.isPlaying) {
        allDanmakuController.pause();
      } else {
        allDanmakuController.play();
      }
      UniDanmakuController.download(_playerCtr.value.position);
      UniDanmakuController.addDanmaku(_playerCtr.value.position);
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return StreamBuilder(
          stream: danmakuStream.stream,
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              final key = UniqueKey();
              danmakuItemList.add(DanmakuFlyItem(
                key: key,
                danmakuElem: snapshot.data!,
                maxWidth: constraint.maxWidth,
                maxHeight: constraint.maxHeight,
                controller: allDanmakuController,
                onComplete: () =>
                    Future(() =>
                        danmakuItemList
                            .removeWhere((element) => element.key == key)),
              ));
            }
            return Stack(
              children: danmakuItemList,
            );
          });
    });
  }
}

/// 单个弹幕
class DanmakuItem extends StatelessWidget {
  final num id;
  final Widget child;
  final Offset offset;
  final Function(num id)? onOut;

  const DanmakuItem({
    super.key,
    required this.child,
    required this.offset,
    required this.id,
    this.onOut,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: offset.dy,
      right: offset.dx,
      child: child,
    );
  }
}

//自带动画控制器的弹幕
class DanmakuFlyItem extends StatefulWidget {
  const DanmakuFlyItem({super.key,
    required this.danmakuElem,
    required this.maxWidth,
    required this.maxHeight,
    this.controller,
    this.onComplete});

  final double maxWidth;
  final double maxHeight;
  final DanmakuElem danmakuElem;
  final VoidCallback? onComplete;
  final DanmakuItemController? controller;

  @override
  State<DanmakuFlyItem> createState() => _DanmakuFlyItemState();
}

class _DanmakuFlyItemState extends State<DanmakuFlyItem>
    with TickerProviderStateMixin {
  late final AnimationController danmakuAnimeCtr = AnimationController(
      duration: Duration(seconds: widget.maxWidth ~/ 24), vsync: this);
  late final danmakuTween = Tween(begin: .0, end: widget.maxWidth);
  late Animation<double> danmakuAnimation =
  danmakuTween.animate(danmakuAnimeCtr);
  double defaultY = 100;

  @override
  void initState() {
    super.initState();
    defaultY = math.Random().nextDouble() * widget.maxHeight;
    danmakuAnimeCtr.forward();

    danmakuAnimeCtr.addListener(() {
      if (danmakuAnimeCtr.isCompleted) {
        widget.onComplete?.call();
        dispose();
      }
    });
  }

  @override
  void dispose() {
    danmakuAnimeCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: Listenable.merge([danmakuAnimation, widget.controller]),
        builder: (context, _) {
          try{
            if(widget.controller?.value.isPlaying == false) {
              danmakuAnimeCtr.stop();
            } else if(!danmakuAnimeCtr.isAnimating && !danmakuAnimeCtr.isCompleted) {
              danmakuAnimeCtr.forward();
            }
          } catch (e) {
            debugPrint("already disposed");
          }


          return _buildDanmakuItem(
              Offset(danmakuAnimation.value, defaultY), widget.danmakuElem);
        });
  }

  DanmakuItem _buildDanmakuItem(Offset offset, DanmakuElem e) {
    final item = DanmakuItem(
        offset: offset,
        id: e.id.toInt(),
        child: Text(
          e.content,
          style: TextStyle(
              color: Color(int.parse("0xff${e.color.toRadixString(16)}"))),
        ));

    return item;
  }
}

class DanmakuItemValues {
  // final Offset offset;
  final bool isPlaying;

  DanmakuItemValues copyWith({bool? isPlaying}) =>
      DanmakuItemValues(
          isPlaying: isPlaying ?? this.isPlaying);

  DanmakuItemValues({required this.isPlaying});
}

class DanmakuItemController extends ValueNotifier<DanmakuItemValues> {
  DanmakuItemController.init({required bool isPlaying}):
  super(DanmakuItemValues(isPlaying: isPlaying));

  pause() {
    value = value.copyWith(isPlaying: false);
  }
  play() {
    value = value.copyWith(isPlaying: true);
  }

}
