import 'package:flutter/material.dart';

class Layout {
  static Widget render({
    @required Widget content,
    String title = 'Suitup Flutter Theme',
  }) {
    assert(content != null, 'Content must not be null');

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
