import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'suitup_colors.dart';
import 'suitup_typography.dart';

class SuitupFormField extends StatelessWidget {
  final TextEditingController fieldController;
  final String? fieldName;
  final TextStyle? fieldNameStyle;
  final String? hintText;
  final TextStyle? hintTextStyle;
  final String? Function(String?)? validator;
  final EdgeInsetsGeometry padding;
  final bool enabled;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final List<TextInputFormatter> inputFormatters;
  final void Function(String value)? onChanged;

  const SuitupFormField({
    Key? key,
    required this.fieldController,
    this.fieldName,
    this.fieldNameStyle,
    this.hintText,
    this.hintTextStyle,
    this.validator,
    this.padding = const EdgeInsets.all(8.0),
    this.enabled = true,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.inputFormatters = const [],
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (fieldName != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(fieldName!, style: fieldNameStyle),
            ),
          SizedBox(
            child: TextFormField(
              keyboardType: keyboardType,
              controller: fieldController,
              textInputAction: textInputAction,
              obscureText: obscureText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                hintText: hintText,
                hintStyle: hintTextStyle,
                fillColor: SuitupColors.contrastLow.withOpacity(.2),
                filled: true,
                errorStyle: SuitupTypography.bodyText2.copyWith(
                  color: Colors.red[300],
                  shadows: [
                    const Shadow(
                      color: Colors.black,
                      offset: Offset(1, 1),
                    ),
                  ],
                ),
              ),
              inputFormatters: inputFormatters,
              onChanged: onChanged,
              validator: validator,
              enabled: enabled,
            ),
          ),
          if (!enabled)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text('Por enquanto ainda não é possível modificar este campo'),
            )
        ],
      ),
    );
  }
}
