import 'dart:ui';

class SuitupColorSettings {
  Color _white;
  set white(Color value) => _white = value;
  Color get white => _white ?? Color(int.parse('FFFFFFFF', radix: 16));

  Color _light;
  set light(Color value) => _light = value;
  Color get light => _light ?? Color(int.parse('FFf5f5f5', radix: 16));

  Color _dark;
  set dark(Color value) => _dark = value;
  Color get dark => _dark ?? Color(int.parse('FF363636', radix: 16));

  Color _black;
  set black(Color value) => _black = value;
  Color get black => _black ?? Color(int.parse('FF000000', radix: 16));

  Color _text;
  set text(Color value) => _text = value;
  Color get text => _text ?? Color(int.parse('00000000', radix: 16));

  Color _ghost;
  set ghost(Color value) => _ghost = value;
  Color get ghost => _ghost ?? Color(int.parse('00000000', radix: 16));

  Color _link;
  set link(Color value) => _link = value;
  Color get link => _link ?? Color(int.parse('FF485fc7', radix: 16));

  /// Colored

  Color _info;
  set info(Color value) => _info = value;
  Color get info => _info ?? Color(int.parse('FF3e8ed0', radix: 16));

  Color _success;
  set success(Color value) => _success = value;
  Color get success => _success ?? Color(int.parse('FF48c78e', radix: 16));

  Color _warning;
  set warning(Color value) => _warning = value;
  Color get warning => _warning ?? Color(int.parse('FFffe08a', radix: 16));

  Color _danger;
  set danger(Color value) => _danger = value;
  Color get danger => _danger ?? Color(int.parse('FFf14668', radix: 16));

  Color _primary;
  set primary(Color value) => _primary = value;
  Color get primary => _primary ?? Color(int.parse('FF00d1b2', radix: 16));

  // Light

  Color _lightLink;
  set lightLink(Color value) => _lightLink = value;
  Color get lightLink => _lightLink ?? Color(int.parse('FFeff1fa', radix: 16));

  Color _lightInfo;
  set lightInfo(Color value) => _lightInfo = value;
  Color get lightInfo => _lightInfo ?? Color(int.parse('FFeff5fb', radix: 16));

  Color _lightSuccess;
  set lightSuccess(Color value) => _lightSuccess = value;
  Color get lightSuccess => _lightSuccess ?? Color(int.parse('FFeffaf5', radix: 16));

  Color _lightWarning;
  set lightWarning(Color value) => _lightWarning = value;
  Color get lightWarning => _lightWarning ?? Color(int.parse('FFfffaeb', radix: 16));

  Color _lightDanger;
  set lightDanger(Color value) => _lightDanger = value;
  Color get lightDanger => _lightDanger ?? Color(int.parse('FFfeecf0', radix: 16));

  Color _lightPrimary;
  set lightPrimary(Color value) => _lightPrimary = value;
  Color get lightPrimary => _lightPrimary ?? Color(int.parse('FFebfffc', radix: 16));
}
