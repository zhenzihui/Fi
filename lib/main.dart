import 'package:fi/api/client.dart';
import 'package:fi/api/data.dart';
import 'package:fi/api/model/local/video_zone.dart';
import 'package:fi/api/model/response/login.dart';
import 'package:fi/ext/extendable_theme.dart';
import 'package:fi/page/index/home.dart';
import 'package:fi/page/route.dart';
import 'package:fi/page/zone/index.dart';
import 'package:fi/page/zone/zone_detail.dart';
import 'package:fi/util/adaptor.dart';
import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BClient.init();
  await AppMetaData.initialize();
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
        initialRoute: "/",
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(builder: (context) {
            return _buildRoute(
                context: context,
                routeName: settings.name,
                arg: settings.arguments);
          });
        },
      ),
    );
  }

  Widget _buildRoute({
    required BuildContext context,
    String? routeName,
    Object? arg,
  }) {
    switch (routeName) {
      case RouteDefine.pathIndex:
        return const HomePage();
      case RouteDefine.pathRoute:
        arg as VideoZoneCode?;
        switch (arg) {
          case null:
            return Text("起到");

          default:
            return CommonZoneDetailPage(tId: arg.tid??0,);
        }
      default:
        throw 'Route $routeName is not defined';
    }
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
    return const HomePage();
  }
}
