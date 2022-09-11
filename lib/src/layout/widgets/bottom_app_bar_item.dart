import 'package:flutter/material.dart';

class BottomAppBarItem {
  final String title;
  final IconData icon;
  final void Function()? action;

  BottomAppBarItem({
    required this.title,
    required this.icon,
    this.action,
  });
}
