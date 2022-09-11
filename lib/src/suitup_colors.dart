import 'package:flutter/material.dart';

class SuitupColors {
  //
  static MaterialColor get primary => Colors.purple;

  static const int _primaryContrastValue = 0xFF1EB031;
  static MaterialColor get primaryContrast => const MaterialColor(
        _primaryContrastValue,
        <int, Color>{
          50: Color(0xFFe9fbec),
          100: Color(0xFFbef4c5),
          200: Color(0xFF92ec9e),
          300: Color(0xFF66e577),
          400: Color(0xFF3bde50),
          500: Color(_primaryContrastValue), // Color(0xFF1EB031)
          600: Color(0xFF21c437),
          700: Color(0xFF1a992a),
          800: Color(0xFF136d1e),
          900: Color(0xFF0b4112),
        },
      );

  static MaterialColor get secondary => Colors.indigo;

  static const int _secondaryContrastValue = 0xFFB5B036;
  static MaterialColor get secondaryContrast => const MaterialColor(
        _secondaryContrastValue,
        <int, Color>{
          50: Color(0xFFf9f9eb),
          100: Color(0xFFedecc4),
          200: Color(0xFFe2df9d),
          300: Color(0xFFd6d276),
          400: Color(0xFFcac54e),
          500: Color(_secondaryContrastValue), // Color(0xFFB5B036)
          600: Color(0xFFb1ac35),
          700: Color(0xFF898629),
          800: Color(0xFF625f1d),
          900: Color(0xFF3b3912),
        },
      );

  /// #EDEDED
  static Color get surface => const Color(0XFFEDEDED);

  static Color get white => Colors.white;
  static Color get black => Colors.black;
  static Color get contrastLow => SuitupColors.black.withOpacity(.65);
  static Color get contrastHigh => SuitupColors.black.withOpacity(.8);
}
