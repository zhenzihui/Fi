import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/zone/index.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

/// 首页的appbar
class TopBarHome extends StatelessWidget {
  const TopBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    final mTheme = MyThemeWidget.of(context)!;

    return SizedBox(
      height: SU.rpx(80),
      // padding: EdgeInsets.all(mTheme.paddingDefault),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: IconButton(
                onPressed: () => {},
                icon: Icon(Icons.photo_camera_front_outlined)),
          ),
          Expanded(
              flex: 6,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: SU.rpx(50)),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorHeight: SU.rpx(35),
                  // height: SU.rpx(50),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    borderRadius: mTheme.largeBorderRadius,
                  )),
                ),
              )),
          Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(onPressed: () => {PU().to(const ZoneIndexPage())}, icon: Icon(Icons.gamepad)),
                  IconButton(onPressed: () => {}, icon: Icon(Icons.mail)),
                ],
              ))
        ],
      ),
    );
  }
}

/// 首页的tabbar
class VideoTabBar extends StatelessWidget {
  final List<Widget> tabs;
  final TabController controller;

  const VideoTabBar({super.key, required this.tabs, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: tabs,
    );
  }
}

/// 首页的tabbar + tabview
class VideoListTabView extends StatefulWidget {
  final Map<Widget, Widget> tabs;

  const VideoListTabView({super.key, required this.tabs});

  @override
  State<VideoListTabView> createState() => _VideoListTabViewState();
}

class _VideoListTabViewState extends State<VideoListTabView>
    with SingleTickerProviderStateMixin {
  late MyThemeWidget myTheme;

  late final TabController _tabCtr =
      TabController(length: widget.tabs.length, vsync: this);

  @override
  void dispose() {
    _tabCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    myTheme = MyThemeWidget.of(context)!;

    return Column(
      children: [
        VideoTabBar(tabs: widget.tabs.keys.toList(), controller: _tabCtr),
        Expanded(
          child: TabBarView(
            controller: _tabCtr,
            children: widget.tabs.values.toList(),
          ),
        )
      ],
    );
  }
}
