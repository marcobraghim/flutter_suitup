import 'package:example/pages/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class BoxPage extends StatelessWidget {
  static String tag = '/elements/box';

  @override
  Widget build(BuildContext context) {
    return Layout.render(
      content: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Here are our pre defined button types',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 20),
                //
                // Example
                //
                Box(
                  width: double.maxFinite,
                  child: Text('Some content of a box'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
