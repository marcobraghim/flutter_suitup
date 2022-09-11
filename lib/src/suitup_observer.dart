import 'package:flutter/material.dart';

/// This widget is just an alias to the [AnimatedBuilder]
/// because its name is not intuitive
class SuitupObserver extends StatelessWidget {
  final Listenable observable;
  final Widget Function(BuildContext context, Widget? child) builder;

  const SuitupObserver({
    Key? key,
    required this.observable,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => AnimatedBuilder(animation: observable, builder: builder);
}
