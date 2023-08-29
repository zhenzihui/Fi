import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/base.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/video/player.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';

class PopularVideoPage extends StatelessWidget {
  const PopularVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: MyThemeWidget.background),
      child: const PopularVideoListView(),
    );
  }
}

class PopularVideoListView extends StatefulWidget {
  const PopularVideoListView({super.key});

  @override
  State<PopularVideoListView> createState() => _PopularVideoListViewState();
}

class _PopularVideoListViewState extends State<PopularVideoListView> {
  final List<VideoDetail> showList = [];

  PageReq page = PageReq(1);

  final pageStream = StreamController();

  final scrollCtr = ScrollController();

  int get _page => page.page;

  set _page(int i) {
    page = page.copyWith(i);
  }

  bool noMore = false;

  Future _getMore() {
    _page += 1;
    if (noMore) {
      return Future(() => ());
    }

    return BClient.getPopularVideos(page).then((value) {
      showList.addAll(value.list);
      noMore = value.noMore;
      pageStream.add("n");
    });
  }

  Future _refresh() {
    _page = 1;
    noMore = false;
    if (showList.isNotEmpty) {
      showList.removeRange(0, showList.length - 1);
    }

    return _getMore();
  }

  @override
  Widget build(BuildContext context) {
    _getMore();

    scrollCtr.addListener(() {
      if (scrollCtr.position.maxScrollExtent == scrollCtr.offset) {
        _getMore();
      }
    });

    return Container(
      decoration: const BoxDecoration(color: MyThemeWidget.viewBackground),
      child: RefreshIndicator.adaptive(
        onRefresh: () => _refresh(),
        child: CustomScrollView(
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
                      onTap: () =>
                          PU().to(VideoPlayerPage(data: data.toBaseVideo())),
                    );
                  }, childCount: showList.length));
                })
          ],
        ),
      ),
    );
  }
}
