import 'dart:async';

import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/login.dart';
import 'package:fi/api/model/response/login.dart';
import 'package:fi/page/index/Home.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BClient.generateQrCode(),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          final data = snapshot.data!;
          return LoginQR(url: data.url, codeKey: data.qrcodeKey,);
        }
        return CircularProgressIndicator();
      },
    );
  }

}


class LoginQR extends StatefulWidget {
  final String url;
  final String codeKey;

  const LoginQR({super.key, required this.url, required this.codeKey});

  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<LoginQR> {
  _getPollRes(String codeKey, int maxRetry) {
    QrcodePollResp? res;
    int retry = 0;
    Future.doWhile(() async {
      res = await Future.delayed(
          Duration(seconds: 2), () => BClient.pollQrCode(codeKey));
      qrPollStreamController.sink.add(res!);
      return res?.code != 0 && retry < maxRetry;
    });
  }

  late StreamController<QrcodePollResp> qrPollStreamController =
      StreamController();

  @override
  void initState() {
    _getPollRes(widget.codeKey, 10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          QrImageView(data: widget.url),
          StreamBuilder(
            stream: qrPollStreamController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                if(snapshot.data?.code == 0) {
                  Future(() => PU().offTo(const HomePage()));
                }

                return Text("扫码结果: ${snapshot.data?.message}");
              }
              return Text("No event");
            },
          ),
        ],
      ),
    );
  }
}
