import 'package:flutter/material.dart';

/// page util
class PU {
  NavigatorState? get _navigator => MyNavObserver.getInstance().navigator;

  to(Widget destination) {
    _navigator?.push(MaterialPageRoute(builder: (_) => destination));
  }

  toNamed(String path, Object? args) {
    _navigator?.pushNamed(path, arguments: args);
  }

  offTo(Widget destination) => _navigator
      ?.pushReplacement(MaterialPageRoute(builder: (_) => destination));

  pop() => _navigator?.pop();

  static Widget get loading => Center(child: const CircularProgressIndicator());

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


class ErrorPage extends StatelessWidget {
  final String message;

  const ErrorPage({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message),
    );
  }

}