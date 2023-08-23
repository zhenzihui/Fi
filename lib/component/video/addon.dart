import 'package:fi/api/model/response/home.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OwnerInfo extends StatelessWidget {
  final Owner owner;

  const OwnerInfo({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;
    return SizedBox(
      height: SU.rpx(100),
      width: SU.screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(backgroundImage: NetworkImage(owner.face),
          ),
          SizedBox(width: SU.rpx(8),),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(owner.name, style: myTheme.ownerNameText,),
              Text("xxx万粉丝 xxx视频", style: myTheme.ownerInfoText,)
            ],
          )
        ],
      ),
    );
  }

}

class VideoAddonInfo extends StatelessWidget {
  final BaseVideo baseVideo;

  const VideoAddonInfo({super.key, required this.baseVideo});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);
    return Padding(padding: EdgeInsets.only(
        left: myTheme?.paddingDefault ?? 0,
        right: myTheme?.paddingDefault ?? 0),

      child: Column(children: [
        OwnerInfo(owner: baseVideo.owner)
      ],),
    );
  }

}