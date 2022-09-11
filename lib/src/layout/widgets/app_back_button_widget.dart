import 'package:flutter/material.dart';

import '../../suitup_colors.dart';

class AppBackButtomWidget extends StatelessWidget {
  final Widget child;
  final void Function()? backButtonOnPressed;

  const AppBackButtomWidget({
    Key? key,
    required this.child,
    required this.backButtonOnPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Positioned(
          top: 16,
          left: 16,
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              shadows: [Shadow(color: SuitupColors.black, offset: const Offset(1, -1), blurRadius: 1)],
            ),
            onPressed: backButtonOnPressed ?? () => Navigator.pop(context),
            iconSize: 42,
          ),
        ),
      ],
    );
  }
}
