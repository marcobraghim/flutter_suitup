import 'dart:io';

import 'package:flutter/material.dart';

import '../suitup_colors.dart';

class SuitupConfirmButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  const SuitupConfirmButton({
    Key? key,
    required this.onTap,
    this.label = 'Salvar',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, Platform.isIOS ? 48 : 16),
      child: SizedBox(
        height: 50,
        width: double.maxFinite,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: SuitupColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          onPressed: onTap,
          child: Text(label),
        ),
      ),
    );
  }
}
