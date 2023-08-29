import 'package:fi/biz/strings.dart';
import 'package:fi/component/home.dart';
import 'package:fi/component/login.dart';
import 'package:fi/page/index/tab_page/popular.dart';
import 'package:fi/page/index/tab_page/tab_recommended.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBarHome(),
            Expanded(
              flex: 9,
              child: VideoListTabView(
                tabs: {
                  Text(TabNames.pageReCommended.value): const RecommendedPage(),
                  Text(TabNames.pagePopular.value): const PopularVideoPage(),
                },
              ),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LoginCard());
  }
}
