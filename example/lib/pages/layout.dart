import 'package:flutter/material.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class Layout {
  static Widget render({
    required Widget content,
    String title = 'Suitup Flutter Theme',
  }) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SuitupSettings.instance.colors.primary,
        title: Text(title),
      ),
      body: content,
    );
  }
}
