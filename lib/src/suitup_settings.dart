class SuitupSettings {
  // Singleton definition
  SuitupSettings.internal();
  static final SuitupSettings _instance = SuitupSettings.internal();
  static SuitupSettings get instance => _instance;

  // global settings
  double _em = 1.0;

  double emFactor = 10;

  set em(double val) => _em = val;

  double get em => emFactor * _em;
}
