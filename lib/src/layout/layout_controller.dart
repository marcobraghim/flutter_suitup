import 'package:flutter/material.dart';

class LayoutController extends ChangeNotifier {
  int _index = 0;

  int get currentIndex => _index;

  set currentIndex(int val) {
    _index = val;
    notifyListeners();
  }
}
