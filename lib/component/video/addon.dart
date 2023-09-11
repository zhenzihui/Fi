import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/operation.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/video.dart';
import 'package:fi/component/api.dart';
import 'package:fi/component/icon/operation.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/video/player.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:fi/util/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SimpleOwnerInfo extends StatelessWidget {
  final Owner owner;

  const SimpleOwnerInfo({super.key, required this.owner});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipOval(
          child: Image.network(owner.face, width: 20,),
        ),
        SizedBox(width: SU.rpx(10),),
        Text(
          owner.name,
          style: myTheme.ownerNameText,
        ),
      ],
    );
  }
}


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
class VideoAddonInfo2 extends StatelessWidget {
  final VideoDetail data;

  const VideoAddonInfo2({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context);
    return Padding(
      padding: EdgeInsets.only(
          left: myTheme?.paddingDefault ?? 0,
          right: myTheme?.paddingDefault ?? 0),
      child: Column(
        children: [
          OwnerInfo(owner: data.owner),
          VideoDesc(
            theme: myTheme,
            data: data,
          ),
          SizedBox(
            height: SU.rpx(20),
          ),
          SizedBox(
            height: 50,
            child: VideoOptionRow(
              stat: data.stat,
              bvId: data.bvId,
            ),
          ),
          Divider(),
          Expanded(
            child: VideoRelatedList(
              bvId: data.bvId,
            ),
          )
        ],
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
    final descController = ValueNotifier(false);
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
            Expanded(
              flex: 6,
              child: Row(children: [
                VideoStatIcon(icon: Text("📺"), text: stat.view ?? '-'),
                VideoStatIcon(icon: Text("📰"), text: stat.danmaku ?? '-'),
              ]),
            ),
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
  final String bvId;

  const VideoOptionRow({
    super.key,
    required this.stat,
    required this.bvId,
  });

  final optAssetsHome = "assets/icon/opt";

  _buildOptIcon(String imageName, bool active) {
    return SvgPicture.asset(
      "$optAssetsHome/$imageName.svg",
      width: 30,
      colorFilter:
          active ? null : const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: ApiBuilder(BClient.getLikeStat(GetOptStatRequest(bvId: bvId)),
              builder: (context, data) {
            final liked = ValueNotifier(data == LikeStat.liked.stat);
            return ListenableBuilder(
              builder: (context, _) {
                final isLiked = liked.value;
                return VideoStatIcon(
                  landscape: true,
                  icon: _buildOptIcon("like", isLiked),
                  operated: isLiked,
                  text: isLiked ? StUtil.plus(stat.like, 1) : stat.like ?? "-",
                  onTap: () => BClient.like(LikeRequest(
                          like: isLiked ? LikeOpt.cancel : LikeOpt.like,
                          bvId: bvId))
                      .then((value) => liked.value = !liked.value),
                );
              },
              listenable: liked,
            );
          }),
        ),
        Expanded(
          child: ApiBuilder(
            BClient.getCoinStat(GetOptStatRequest(bvId: bvId)),
            builder: (context, data) {
              final added = ValueNotifier(data.hasAddCoin);
              return ListenableBuilder(
                builder: (context, _) {
                  return VideoStatIcon(
                    landscape: true,
                    icon: _buildOptIcon("coin", added.value),
                    text: stat.coin ?? "-",
                    onTap: () => BClient.addCoins(AddCoinReq(bvId: bvId, multiply: 1))
                    .then((value) => added.value = true),
                  );
                }, listenable: added,
              );
            }
          ),
        ),
        Expanded(
          child: ApiBuilder(
            BClient.getFavStat(GetOptStatRequest(bvId: bvId)),
            builder: (context, data) {
              final favoured = ValueNotifier(data.hasFavoured);
              return ListenableBuilder(
                builder: (context, _) {
                  return VideoStatIcon(
                    landscape: true,
                    icon: _buildOptIcon("fav", favoured.value),
                    text: stat.favorite ?? "-",
                  );
                }, listenable: favoured,
              );
            }
          ),
        ),

        // VideoStatIcon(
        //   landscape: true,
        //   icon: Text("👏"),
        //   text: stat.share ?? "-",
        // ),
      ],
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
      BClient.getRelatedVideos(GetVideoDetailReq(bvId: bvId)),
      builder: (context, data) {
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (ctx, index) => VideoRelatedListItem(
            detail: data[index],
            onTap: () => PU().offTo(VideoPlayerPage(
              data: data[index],
            )),
          ),
        );
      },
    );
  }
}

///关联推荐视频list item
class VideoRelatedListItem extends StatelessWidget {
  final VideoDetail detail;
  final VoidCallback? onTap;

  const VideoRelatedListItem({super.key, required this.detail, this.onTap});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;

    return Padding(
      padding: EdgeInsets.all(myTheme.paddingDefault),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                      borderRadius: myTheme.smallBorderRadius,
                      child: Image.network(
                        detail.pic,
                        fit: BoxFit.fitWidth,
                      ))),
              SizedBox(
                width: SU.rpx(10),
              ),
              Expanded(
                flex: 6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detail.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(detail.owner.name),
                        Row(
                          children: [
                            VideoStatIcon(
                                icon: const Text("📺"),
                                text: detail.stat.view ?? ""),
                            VideoStatIcon(
                                icon: const Text("📰"),
                                text: detail.stat.danmaku ?? ""),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
