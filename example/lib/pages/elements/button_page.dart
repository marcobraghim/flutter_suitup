import 'package:example/pages/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class ButtonPage extends StatefulWidget {
  static String tag = 'elements/button';

  @override
  _ButtonPageState createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    print(SuitupSettings.instance.rem);

    return Layout.render(
      content: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Here are our pre defined button types',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Button(
                  child: Text('White'),
                  type: ButtonType.white,
                  onTap: () {
                    setState(() {
                      flag = !flag;

                      SuitupSettings.instance.rem = (flag) ? 1.5 : 1;
                    });

                    print('White button tapped');
                  },
                ),
                Button(
                  child: Text(
                    'Black',
                    style: TextStyle(color: Colors.white),
                  ),
                  type: ButtonType.black,
                  onTap: () => print('Black button tapped'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Button(
                  child: Text('Primary'),
                  onTap: () => print('Primary button tapped'),
                  borderRadius: BorderRadius.zero,
                ),
                Button(
                  child: Text('Link'),
                  type: ButtonType.link,
                  onTap: () => print('Link button tapped'),
                ),
                Button(
                  child: Text('Info'),
                  type: ButtonType.info,
                  onTap: () => print('Info button tapped'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
