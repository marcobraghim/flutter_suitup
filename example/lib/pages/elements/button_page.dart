import 'package:example/pages/layout.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  static String tag = 'elements/button';

  @override
  Widget build(BuildContext context) {
    return Layout.render(
      content: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Oie'),
          ],
        ),
      ),
    );
  }
}
