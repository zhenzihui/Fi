import 'package:fi/component/video/video.dart';
import 'package:fi/util/adaptor.dart';
import 'package:flutter/material.dart';

class RecommendedPage extends StatelessWidget {
  const RecommendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: SU.screenWidth,
        height: SU.screenHeight,
        child: const VideoList());
  }

}