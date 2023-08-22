import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/test.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/video/player.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//视频列表
class VideoList extends StatefulWidget {
  const VideoList({super.key});

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final listStream = StreamController<List<BaseVideo>>();
  final _scrollCtr = ScrollController();
  final List<BaseVideo> cacheList = [];

  @override
  void initState() {
    super.initState();
    _getMore();

    _scrollCtr.addListener(() {
      if (_scrollCtr.position.maxScrollExtent == _scrollCtr.offset) {
        _getMore();
      }
    });
  }

  _getMore() => BClient.getRecommendedVideos()
      .then((listData) => listStream.add(listData));

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;

    final maxExtend = SU.isLandscapeDynamic(context) ? 4 : 3;
    final delegate = SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: SU.designWidth / maxExtend,
        mainAxisSpacing: myTheme.gridSpacing,
        crossAxisSpacing: myTheme.gridSpacing);

    return Container(
      decoration: const BoxDecoration(color: MyThemeWidget.background),
      child: CustomScrollView(
        controller: _scrollCtr,
        slivers: [
          StreamBuilder(
              stream: listStream.stream,
              builder: (BuildContext context,
                  AsyncSnapshot<List<BaseVideo>> snapshot) {
                if (snapshot.connectionState != ConnectionState.active) {
                  return const SliverToBoxAdapter(child: Divider());
                }
                final resList = cacheList..addAll(snapshot.data ?? []);
                final pageUtil = PU(context);

                final childDelegate = SliverChildBuilderDelegate(
                  (_, index) {
                    final current = resList[index];
                    return VideoListItem(
                      data: current,
                      onTap: () => pageUtil.to(VideoPlayerPage(data: current)),
                    );
                  },
                  childCount: resList.length,
                );

                return SliverGrid(
                  delegate: childDelegate,
                  gridDelegate: delegate,
                );
              })
        ],
      ),
    );
  }
}

// 单个视频列表item
class VideoListItem extends StatelessWidget {
  final BaseVideo data;
  final VoidCallback? onTap;

  const VideoListItem({super.key, required this.data, this.onTap});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: myTheme.viewDeco,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: myTheme.smallRadius, topRight: myTheme.smallRadius),
              child: Image.network(
                data.pic,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: myTheme.paddingDefault, right: myTheme.paddingDefault),
              child: Text(
                data.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: myTheme.categoryTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
