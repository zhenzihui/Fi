import 'package:fi/ext/extendable_theme.dart';
import 'package:flutter/material.dart';

class ZonePage extends StatelessWidget {
  final Widget title;
  final Widget child;

  const ZonePage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    final myTheme = MyThemeWidget.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: myTheme.paddingLarge,
            right: myTheme.paddingLarge,
          ),
          child: child),
    );
  }
}
