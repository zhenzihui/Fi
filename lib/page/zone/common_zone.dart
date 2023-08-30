import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/local/video_zone.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/video/addon.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/video/player.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';

///分区视频通用页
class VideoSubZoneListPage extends StatelessWidget {
  final VideoSubZoneData zoneData;

  const VideoSubZoneListPage({super.key, required this.zoneData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: MyThemeWidget.background),
      child: ZoneVideoListView(zoneData: zoneData,),
    );
  }
}

class ZoneVideoListView extends StatefulWidget {
  final VideoSubZoneData zoneData;

  const ZoneVideoListView({super.key, required this.zoneData});

  @override
  State<ZoneVideoListView> createState() => _ZoneVideoListViewState();
}

class _ZoneVideoListViewState extends State<ZoneVideoListView> {
  final List<VideoDetail> showList = [];

  late ZoneVideoListReq page = ZoneVideoListReq(widget.zoneData.tId??0, 1);

  final pageStream = StreamController();

  final scrollCtr = ScrollController();

  int get _page => page.page;

  set _page(int i) {
    page = page.copyWith(i);
  }

  bool noMore = false;

  Future _getMore() {
    _page += 1;


    return BClient.getZoneVideos(page).then((value) {
      showList.addAll(value.archives);
      pageStream.add("n");
    }).onError((error, stackTrace) {
      debugPrint("$error");
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: Duration(milliseconds: 300),
          content: ErrorPage(message: error.toString())));
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
                      onTap: () => PU().to(VideoPlayerPage(data: data)),
                    );
                  }, childCount: showList.length));
                })
          ],
        ),
      ),
    );
  }
}
