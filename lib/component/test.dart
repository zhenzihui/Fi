import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/base.dart';
import 'package:fi/api/model/response/home.dart';
import 'package:flutter/cupertino.dart';

class TestVideoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: BClient.getRecommendedVideos(),
        builder: (context, snapshot) {
      String res = "";
      if(snapshot.hasData) {
        res = "${snapshot.data?.length ?? 0}";
      }
      if(snapshot.hasError) {
        res = snapshot.error.toString();
      }

      return Center(child: Text(res));
    });
  }

}


class TestApi extends StatelessWidget {
  final Future<dynamic> future;

  const TestApi({super.key, required this.future});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          String res ="";
          if(snapshot.hasData) {
            final detail = snapshot.data as VideoDetail;
            res = detail.title;
          } else {
            res = snapshot.error.toString();
          }
          return Text(res);
        });

  }

}