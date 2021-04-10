import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class SuitupButtonSettings {
  SuitupSettings get s => SuitupSettings.instance;

  /// Padding ///
  EdgeInsets _padding;

  set padding(EdgeInsets value) => _padding = value;

  EdgeInsets get padding => _padding ?? EdgeInsets.symmetric(horizontal: (s.rem * 2), vertical: s.rem);

  ///  Margin ///
  EdgeInsets _margin;

  set margin(EdgeInsets value) => _margin = value;

  EdgeInsets get margin => _margin ?? EdgeInsets.symmetric(horizontal: 3);

  /// Border ///
  Border _border;

  set border(Border value) => _border = value;

  Border get border => _border ?? Border.all(color: Color.fromRGBO(55, 55, 55, .2));

  /// Border Radius ///
  BorderRadius _borderRadius;

  set borderRadius(BorderRadius value) => _borderRadius = value;

  BorderRadius get borderRadius => _borderRadius ?? BorderRadius.circular(6);
}
