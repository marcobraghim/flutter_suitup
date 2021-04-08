import 'package:example/pages/elements/button_page.dart';
import 'package:example/pages/layout.dart';
import 'package:flutter/material.dart';

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
            FlatButton(
              color: Colors.blue,
              onPressed: () => Navigator.of(context).pushNamed(ButtonPage.tag),
              child: Text(
                'Button',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
