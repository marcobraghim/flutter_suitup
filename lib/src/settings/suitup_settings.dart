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

  double _remValue = 1.0;

  set rem(double val) => _remValue = val;

  /// Returns the current remFactor by remValue
  double get rem => remFactor * _remValue;
}
