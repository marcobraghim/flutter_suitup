import 'package:example/pages/layout.dart';
import 'package:flutter/widgets.dart';

class TitlePage extends StatelessWidget {
  static String tag = 'elements/title';

  @override
  Widget build(BuildContext context) {
    Widget content = Container();

    return Layout.render(
      title: 'Title and Subtitle',
      content: content,
    );
  }
}
