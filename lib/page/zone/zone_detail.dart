import 'package:fi/api/model/local/video_zone.dart';
import 'package:fi/component/home.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/zone/zone_page.dart';
import 'package:flutter/material.dart';

///有sub的通用热门视频页
class CommonZoneDetailPage extends StatelessWidget {
  final int tId;

  const CommonZoneDetailPage({super.key, required this.tId});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);

    final zoneInfo = AppMetaData.videoZoneList
        .where((element) => element.tId == tId)
        .firstOrNull;
    if (zoneInfo == null) {
      return Container();
    }

    return ZonePage(
      title: Text(
        zoneInfo.name,
        style: myTheme?.cardTitle,
      ),
      child: VideoListTabView(
        tabs: {},
      ),
    );
  }
}
