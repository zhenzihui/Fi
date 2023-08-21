import 'package:flutter/material.dart';

/// page util
class PU {
  final BuildContext context;

  PU(this.context);

  to(Widget destination) => Navigator.of(context)
      .push(MaterialPageRoute(builder: (_) => destination));

  pop() => Navigator.pop(context);

  static get loading => const CircularProgressIndicator();
}
