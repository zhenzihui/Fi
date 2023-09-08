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

  const DanmakuOverlay({super.key});

  @override
  State<DanmakuOverlay> createState() => _DanmakuOverlayState();
}

class _DanmakuOverlayState extends State<DanmakuOverlay>
    with SingleTickerProviderStateMixin {
  late final _playerCtr = UniPlayerController.getInstance();

  late StreamController<DanmakuElem> danmakuStream;
  List<DanmakuFlyItem> danmakuItemList = List.empty(growable: true);
  DanmakuItemController? allDanmakuController;

  @override
  void initState() {
    super.initState();
    if (danmakuItemList.isNotEmpty) {
      danmakuItemList.removeRange(0, danmakuItemList.length - 1);
    }
    UniDanmakuController.initialize(UniPlayerController.currentCId!, 1);
    danmakuStream = UniDanmakuController.getInstance();

    int previousSec = 0;
    _playerCtr.addListener(() {
      if (!_playerCtr.value.isPlaying) {
        allDanmakuController?.pause();
      } else {
        allDanmakuController?.play();
      }
      // Future(() {
      if((_playerCtr.value.position.inSeconds - previousSec).abs() > 1) {
        UniDanmakuController.download(_playerCtr.value.position);
        UniDanmakuController.addDanmaku(_playerCtr.value.position);
        previousSec = _playerCtr.value.position.inSeconds;
      }

      // });
    });
  }

  @override
  void dispose() {
    if (danmakuItemList.isNotEmpty) {
      danmakuItemList.removeRange(0, danmakuItemList.length - 1);
    }
    UniDanmakuController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      allDanmakuController = DanmakuItemController.init(
          isPlaying: true,
          maxOffset: Offset(constraint.maxWidth, constraint.maxHeight));
      return StreamBuilder(
          stream: danmakuStream.stream,
          builder: (ctx, snapshot) {
            if (snapshot.hasData) {
              final key = UniqueKey();
              danmakuItemList.add(DanmakuFlyItem(
                key: key,
                danmakuElem: snapshot.data!,
                controller: allDanmakuController,
                onComplete: () => Future(() => danmakuItemList
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
  const DanmakuFlyItem({
    super.key,
    this.controller,
    required this.danmakuElem,
    this.onComplete,
  });

  final DanmakuElem danmakuElem;
  final VoidCallback? onComplete;
  final DanmakuItemController? controller;

  @override
  State<DanmakuFlyItem> createState() => _DanmakuFlyItemState();
}

class _DanmakuFlyItemState extends State<DanmakuFlyItem>
    with TickerProviderStateMixin {
  late final width = widget.controller?.value.maxOffset.dx ?? 0;
  late final height = widget.controller?.value.maxOffset.dy ?? 0;

  late final AnimationController danmakuAnimeCtr = AnimationController(
      duration: Duration(seconds: width ~/ 24), vsync: this);
  late final danmakuTween = Tween(begin: .0, end: width);
  late Animation<double> danmakuAnimation =
      danmakuTween.animate(danmakuAnimeCtr);
  double defaultY = 100;

  @override
  void initState() {
    super.initState();
    defaultY = math.Random().nextDouble() * height;
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
          try {
            if (widget.controller?.value.isPlaying == false) {
              danmakuAnimeCtr.stop();
            } else if (!danmakuAnimeCtr.isAnimating &&
                !danmakuAnimeCtr.isCompleted) {
              danmakuAnimeCtr.forward();
            }
          } catch (e) {
            debugPrint("already disposed");
            return Container();
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

//弹幕控制器的值
class DanmakuItemValues {
  // final Offset offset;
  final bool isPlaying;
  final Offset maxOffset;
  final VoidCallback? onComplete;

  DanmakuItemValues copyWith(
          {bool? isPlaying,
          Offset? maxOffset,
          VoidCallback? onComplete,
          DanmakuElem? danmakuElem}) =>
      DanmakuItemValues(
        isPlaying: isPlaying ?? this.isPlaying,
        maxOffset: maxOffset ?? this.maxOffset,
        onComplete: onComplete ?? this.onComplete,
      );

  DanmakuItemValues(
      {required this.isPlaying, required this.maxOffset, this.onComplete});
}

//弹幕控制器
class DanmakuItemController extends ValueNotifier<DanmakuItemValues> {
  DanmakuItemController.init({
    required bool isPlaying,
    required Offset maxOffset,
  }) : super(DanmakuItemValues(
          isPlaying: isPlaying,
          maxOffset: maxOffset,
        ));

  pause() {
    value = value.copyWith(isPlaying: false);
  }

  play() {
    value = value.copyWith(isPlaying: true);
  }
}
