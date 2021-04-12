import 'package:flutter_suitup/src/settings/elements/button_settings.dart';

class SuitupSettings {
  // Singleton definition
  static final SuitupSettings _instance = SuitupSettings._construct();
  static SuitupSettings get instance => _instance;

  SuitupButtonSettings buttonSettings;

  // Construction one time run
  SuitupSettings._construct() {
    buttonSettings = SuitupButtonSettings();
  }

  // global settings
  double remFactor = 10;
  double baseRadius = 6;

  /// REM
  /// This is a relative parameter, all the spaces will be calculated
  /// using it as reference
  double _remValue = 1.0;
  set rem(double val) => _remValue = val;
  double get rem => remFactor * _remValue;
}
