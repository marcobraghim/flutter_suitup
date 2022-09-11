import 'package:flutter/widgets.dart';

class SuitupScrollToExpandedColumn extends StatelessWidget {
  final Widget child;

  /// So you have the layout in a column with expanded, spacers and flexibles items
  /// and a [SingleChildScrollView] won't do the work because of that unboundered children.
  ///
  /// Well this widget will make it work, but the [IntrinsicHeight] widget is expensive
  /// so you must avoid to use it.
  const SuitupScrollToExpandedColumn({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: IntrinsicHeight(child: child),
        ),
      ),
    );
  }
}
