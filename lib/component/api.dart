import 'package:fi/util/page.dart';
import 'package:flutter/material.dart';

//封装接口请求
class ApiBuilder<T> extends StatelessWidget {
  final Future<T> future;
  final Widget Function(BuildContext context, T data) builder;
  final Widget? waiting;
  final Widget Function(BuildContext context, Object? error)? onError;

  const ApiBuilder(this.future,
      {super.key, required this.builder, this.waiting, this.onError});

  @override
  Widget build(BuildContext context) => FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        final waitingWidget = waiting ?? PU.loading;
        //
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   //等待返回
        //   return waitingWidget;
        // }

        if (snapshot.connectionState == ConnectionState.done) {
          //返回数据
          if (snapshot.hasData && snapshot.data != null) {
            return builder(context, snapshot.data as T);
          }
        }
        return SliverToBoxAdapter(
          child: Container(
              child: onError?.call(context, snapshot.error) ??
                  Text(snapshot.error?.toString() ?? "loading")),
        );
      });
}
