import 'package:example/pages/elements/box_page.dart';
import 'package:example/pages/elements/button_page.dart';
import 'package:example/pages/elements/title_page.dart';
import 'package:example/pages/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Layout.render(
      content: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Elements',
              style: TextStyle(fontSize: 24),
            ),
            Row(
              children: [
                Button(
                  onTap: () => Navigator.of(context).pushNamed(BoxPage.tag),
                  child: Text(
                    'Box',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                Button(
                  onTap: () => Navigator.of(context).pushNamed(ButtonPage.tag),
                  child: Text(
                    'Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(width: 10),
                Button(
                  onTap: () => Navigator.of(context).pushNamed(TitlePage.tag),
                  child: Text(
                    'Title',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
