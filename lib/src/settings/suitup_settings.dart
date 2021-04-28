import 'package:flutter_suitup/src/settings/color_settings.dart';
import 'package:flutter_suitup/src/settings/elements/button_settings.dart';

class SuitupSettings {
  // Singleton definition
  static final SuitupSettings _instance = SuitupSettings._construct();
  static SuitupSettings get instance => _instance;

  late SuitupButtonSettings buttons;
  late SuitupColorSettings colors;

  // Construction one time run
  SuitupSettings._construct() {
    buttons = SuitupButtonSettings();
    colors = SuitupColorSettings();
  }

  // global settings
  double remFactor = 10;
  double baseRadius = 6;

  /// REM
  double _remValue = 1.0;

  /// This is a relative parameter, all the spaces will be calculated
  /// using it as reference. By default this value is 1.0, it means that
  /// if you define as 2.0 everything will be double sized
  set rem(double val) => _remValue = val;

  double get rem => remFactor * _remValue;
}
