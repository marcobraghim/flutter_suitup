import 'package:example/pages/elements/button_page.dart';
import 'package:example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

void main() {
  var suitup = SuitupSettings.instance;
  suitup.buttonSettings.borderRadius = BorderRadius.circular(15);
  // suitup.rem = 2;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      routes: {
        ButtonPage.tag: (_) => ButtonPage(),
      },
    );
  }
}
