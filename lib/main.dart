import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:fi/api/client.dart';
import 'package:fi/api/model/request/video.dart';
import 'package:fi/api/model/response/login.dart';
import 'package:fi/component/home.dart';
import 'package:fi/component/login.dart';
import 'package:fi/component/test.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/index/home.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:fi/util/adaptor.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BClient.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SU.initialize(context);
    PU.initialize();

    return MyThemeWidget(
      child: MaterialApp(
        title: 'Flutter Demo',
        navigatorObservers: [MyNavObserver.getInstance()],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xfffb7299)),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Stream<QrcodePollResp?> qrCodePollStream;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
