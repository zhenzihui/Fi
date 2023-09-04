import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/component/api.dart';
import 'package:flutter/cupertino.dart';

class DanmakuTest extends StatelessWidget {
  final num cId;

  const DanmakuTest({super.key, required this.cId});

  @override
  Widget build(BuildContext context) {
    final getDanmakuReq = GetDanmakuReq(type: 1, oId: cId, segmentIndex: 1);

    return ApiBuilder(BClient.getVideoDanmaku(getDanmakuReq),
        builder: (context, data) {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(data.elems[index].content);
        },
        itemCount: data.elems.length,
      );
    });
  }
}
