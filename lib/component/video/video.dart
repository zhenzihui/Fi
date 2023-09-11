import 'dart:async';

import 'package:dio/dio.dart';
import 'package:fi/api/client.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/video/player.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';

//视频列表
class VideoList extends StatefulWidget {
  const VideoList({super.key});

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final listStream = StreamController<List<VideoDetail>>();
  final _scrollCtr = ScrollController();
  final List<VideoDetail> cacheList = [];

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

  Future _getMore() {
    return BClient.getRecommendedVideos()
        .then((listData) => listStream.add(listData))
        .onError((DioException error, stackTrace) {});
  }

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
      child: RefreshIndicator.adaptive(
          onRefresh: () => _getMore(),
          child: StreamBuilder(
              stream: listStream.stream,
              builder: (BuildContext context,
                  AsyncSnapshot<List<VideoDetail>> snapshot) {
                if (snapshot.connectionState != ConnectionState.active) {
                  return Divider();
                }
                final resList = cacheList..addAll(snapshot.data ?? []);
                return GridView.builder(
                  controller: _scrollCtr,
                  gridDelegate: delegate,
                  itemBuilder: (BuildContext context, int index) {
                    final current = resList[index];
                    return VideoListItem(
                      data: current,
                      onTap: () => PU().to(VideoPlayerPage(data: current)),
                    );
                  },
                  itemCount: resList.length,
                );
              })),
    );
  }
}

// 单个视频列表item
class VideoListItem extends StatelessWidget {
  final VideoDetail data;
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
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: myTheme.paddingDefault, right: myTheme.paddingDefault, bottom: myTheme.paddingDefault),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: myTheme.categoryTitle,
                    ),
                    SimpleOwnerInfo(owner: data.owner)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
