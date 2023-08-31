import 'package:fi/ext/extendable_theme.dart';
import 'package:flutter/cupertino.dart';

class Link extends StatelessWidget {
  final String value;
  final TextStyle? style;
  final VoidCallback? onTap;

  const Link(this.value, {super.key, this.style, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Text(
          value,
          style: style == null
              ? const TextStyle(color: MyThemeWidget.link)
              : style?.copyWith(color: MyThemeWidget.link),
        ));
  }
}
