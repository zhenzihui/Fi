import 'package:flutter/material.dart';

/// page util
class PU {
  get _navigator => MyNavObserver.getInstance().navigator;

  to(Widget destination) {
    _navigator?.push(MaterialPageRoute(builder: (_) => destination));
  }

  offTo(Widget destination) => _navigator
      .pushReplacement(MaterialPageRoute(builder: (_) => destination));

  pop() => _navigator.pop();

  static Widget get loading => SliverToBoxAdapter(child: const CircularProgressIndicator());

  static late GlobalKey<NavigatorState> navigatorKey;
  static late NavigatorObserver navigatorObserver;

  static void initialize() {
    navigatorKey = GlobalKey();
  }
}

class MyNavObserver extends NavigatorObserver {
  static MyNavObserver? _instance;

  static MyNavObserver getInstance() {
    _instance ??= MyNavObserver();
    return _instance!;
  }
}
