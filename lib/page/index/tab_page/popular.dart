import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/base.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/page/video/player.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';

class PopularPage extends StatefulWidget {
  const PopularPage({super.key});

  @override
  State<PopularPage> createState() => _PopularPageState();
}

class _PopularPageState extends State<PopularPage> {
  final List<VideoDetail> showList = [];

  PageReq page = PageReq(1);

  final pageStream = StreamController();

  final scrollCtr = ScrollController();

  int get _page => page.page;

  set _page(int i) {
    page = page.copyWith(i);
  }

  bool noMore = false;

  _getMore() {
    _page += 1;
    if (noMore) {
      return;
    }

    BClient.getPopularVideos(page).then((value) {
      showList.addAll(value.list);
      noMore = value.noMore;
      pageStream.add("n");
    });
  }

  @override
  Widget build(BuildContext context) {
    _getMore();

    scrollCtr.addListener(() {
      if (scrollCtr.position.maxScrollExtent == scrollCtr.offset) {
        _getMore();
      }
    });

    return CustomScrollView(
      controller: scrollCtr,
      slivers: [
        StreamBuilder(
            stream: pageStream.stream,
            builder: (context, st) {
              return SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                final data = showList[index];
                return VideoRelatedListItem(
                  detail: data,
                  onTap: () => PU().to(VideoPlayerPage(data: data.toBaseVideo())),
                );
              }, childCount: showList.length));
            })
      ],
    );
  }
}
