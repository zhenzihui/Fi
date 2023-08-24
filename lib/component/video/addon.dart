import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/api.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/util/adaptor.dart';
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
          CircleAvatar(
            backgroundImage: NetworkImage(owner.face),
          ),
          SizedBox(
            width: SU.rpx(8),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                owner.name,
                style: myTheme.ownerNameText,
              ),
              Text(
                "xxx万粉丝 xxx视频",
                style: myTheme.ownerInfoText,
              )
            ],
          )
        ],
      ),
    );
  }
}

//视频下面的详情
class VideoAddonInfo extends StatelessWidget {
  final BaseVideo baseVideo;

  const VideoAddonInfo({super.key, required this.baseVideo});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);
    return Padding(
      padding: EdgeInsets.only(
          left: myTheme?.paddingDefault ?? 0,
          right: myTheme?.paddingDefault ?? 0),
      child: ApiBuilder(
        BClient.getVideoDetail(baseVideo.bvId),
        builder: (context, data) => ListView(
          children: [
            OwnerInfo(owner: baseVideo.owner),
            VideoDesc(
              theme: myTheme,
              data: data,
            ),
            VideoOptionRow(
              stat: data.stat,
            ),
            Divider(),
            VideoRelatedList(bvId: data.bvId,)
          ],
        ),
      ),
    );
  }
}

/// 视频详细描述
class VideoDesc extends StatelessWidget {
  final MyThemeWidget? theme;
  final VideoDetail data;

  const VideoDesc({super.key, this.theme, required this.data});

  @override
  Widget build(BuildContext context) {
    final myTheme = theme ?? MyThemeWidget.of(context);
    final descController = ValueNotifier(true);
    final stat = data.stat;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => descController.value = !descController.value,
          child: ListenableBuilder(
              listenable: descController,
              builder: (context, _) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 8,
                      child: Text(
                        data.title,
                        style: myTheme?.cardTitle,
                        maxLines: descController.value ? 999 : 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(descController.value
                        ? Icons.arrow_drop_up_rounded
                        : Icons.arrow_drop_down_rounded),
                  ],
                );
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.play_circle_outline_rounded),
            Text(stat.view ?? "-"),
            Icon(Icons.comment),
            Text(stat.danmaku ?? "-"),
            Text(data.pubDate
                .toString()
                .substring(0, data.pubDate.toString().indexOf("."))),
          ],
        ),
        ListenableBuilder(
            listenable: descController,
            builder: (context, _) {
              return Visibility(
                  visible: descController.value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(data.bvId),
                        ],
                      ),
                      Text(data.desc),
                    ],
                  ));
            })
      ],
    );
  }
}

/// 视频操作， 点赞 收藏等
class VideoOptionRow extends StatelessWidget {
  final VideoStat stat;

  const VideoOptionRow({super.key, required this.stat});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        VideoOption(
          icon: Text("👍"),
          text: "点赞",
        ),
        VideoOption(
          icon: RotatedBox(quarterTurns: 90, child: Text("👍")),
          text: "点赞",
        )
      ],
    );
  }
}

/// 视频操作按钮
class VideoOption extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback? onTap;

  const VideoOption(
      {super.key, required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SU.rpx(100),
      child: Column(
        children: [icon, Text(text)],
      ),
    );
  }
}

///关联推荐视频list
class VideoRelatedList extends StatelessWidget {
  final String bvId;

  const VideoRelatedList({super.key, required this.bvId});

  @override
  Widget build(BuildContext context) {
    return ApiBuilder(
      BClient.getRelatedVideo(GetVideoDetailReq(bvId: bvId)),
      builder: (context, data) {
        return Column(
          children: data
              .map((e) => VideoRelatedListItem(
                    detail: e,
                  ))
              .toList(),
        );
      },
    );
  }
}

///关联推荐视频list item
class VideoRelatedListItem extends StatelessWidget {
  final VideoDetail detail;

  const VideoRelatedListItem({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;

    return Padding(
      padding: EdgeInsets.all(myTheme.paddingDefault),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(detail.pic),
          SizedBox(
            width: SU.rpx(10),
          ),
          Column(
            children: [
              Text(detail.title),
              Text(detail.owner.name),
              Row(
                children: [
                  Text("📺 ${detail.stat.view}"),
                  Text("📰 ${detail.stat.danmaku}")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
