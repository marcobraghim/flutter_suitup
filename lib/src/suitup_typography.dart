import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SuitupTypography {
  SuitupTypography._();

  static TextStyle get _font1 => GoogleFonts.rubik();

  static TextStyle get headline1 => _font1.copyWith(fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5);
  static TextStyle get headline2 => _font1.copyWith(fontSize: 60, fontWeight: FontWeight.w300, letterSpacing: -0.5);
  static TextStyle get headline3 => _font1.copyWith(fontSize: 48, fontWeight: FontWeight.w400, letterSpacing: 0.0);
  static TextStyle get headline4 => _font1.copyWith(fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25);
  static TextStyle get headline5 => _font1.copyWith(fontSize: 24, fontWeight: FontWeight.w400, letterSpacing: 0.0);
  static TextStyle get headline6 => _font1.copyWith(fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15);

  static TextStyle get subtitle1 => _font1.copyWith(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15);
  static TextStyle get subtitle2 => _font1.copyWith(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1);

  static TextStyle get bodyText1 => _font1.copyWith(fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5);
  static TextStyle get bodyText2 => _font1.copyWith(fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25);

  static TextStyle get button => _font1.copyWith(fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25);
  static TextStyle get caption => _font1.copyWith(fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4);
  static TextStyle get overline => _font1.copyWith(fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5);
}
