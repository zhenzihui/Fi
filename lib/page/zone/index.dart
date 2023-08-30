import 'package:fi/api/model/local/video_zone.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/zone_page.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ZoneIndexPage extends StatelessWidget {
  const ZoneIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);

    final zoneListWithIcon =
        AppMetaData.videoZoneList.where((e) => e.icon != null).toList();

    final isLandscape = SU.isLandscapeDynamic(context);
    //分区网格按钮页面
    return ZonePage(
        title: Text(
          "分区",
          style: myTheme?.cardTitle,
        ),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isLandscape ? 5 : 4,
              crossAxisSpacing: SU.rpx(isLandscape ? 30 : 40),
              mainAxisSpacing: SU.rpx(isLandscape ? 10 : 60)),
          itemBuilder: (context, index) {
            final data = zoneListWithIcon[index];
            final icon = SVGHelper.loadZoneIcon(
                data.icon ?? "",
                FallbackZoneIcon(
                  text: data.name,
                ));
            return IconButton(
              onPressed: () {},
              icon: Column(
                children: [
                  Expanded(flex: 9, child: icon),
                  Text(
                    data.name,
                    style: myTheme?.videoTitleText,
                  )
                ],
              ),
            );
          },
          itemCount: zoneListWithIcon.length,
        ));
  }
}

class FallbackZoneIcon extends StatelessWidget {
  final String text;

  const FallbackZoneIcon({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: myTheme?.smallBorderRadius,
        color: myTheme?.debugColor.withOpacity(0.5),
        // border: Border.all(color: Colors.grey, width: 1)
      ),
      child: Center(
          child: Text(
        text,
        style: myTheme?.videoTitleText,
      )),
    );
  }
}
