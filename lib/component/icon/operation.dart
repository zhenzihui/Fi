import 'package:fi/util/util.dart';
import 'package:flutter/cupertino.dart';

//带图标和文字的按钮
class IconBtn extends StatelessWidget {
  final Widget icon;
  final Widget text;
  final VoidCallback? onTap;
  final bool landscape;

  const IconBtn(
      {super.key,
      required this.icon,
      required this.text,
      this.onTap,
      this.landscape = false});

  @override
  Widget build(BuildContext context) {
    final content = [icon, text];

    return GestureDetector(
      onTap: onTap,
      child: landscape
          ? Column(
              children: content,
            )
          : Row(
              children: content,
            ),
    );
  }
}

//展示视频的播放量弹幕量，小型
class VideoStatIcon extends StatelessWidget {
  final Widget icon;
  final String text;
  final bool landscape;
  final VoidCallback? onTap;
  //是否操作过
  final bool operated;

  const VideoStatIcon(
      {super.key,
      required this.icon,
      required this.text,
      this.landscape = false,
      this.onTap,
      this.operated = false});

  @override
  Widget build(BuildContext context) {
    return IconBtn(
      icon: icon,
      text: Text(
        StUtil.formatNum(text),
      ),
      landscape: landscape,
      onTap: onTap,
    );
  }
}
