import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class SuitupButtonSettings {
  SuitupSettings get _suitup => SuitupSettings.instance;

  /// Alignment ///
  Alignment _alignment;
  set alignment(Alignment value) => _alignment = value;
  Alignment get alignment => _alignment ?? Alignment.center;

  /// Padding ///
  EdgeInsets _padding;
  set padding(EdgeInsets value) => _padding = value;
  EdgeInsets get padding => _padding ?? EdgeInsets.symmetric(horizontal: (_suitup.rem * 2), vertical: _suitup.rem);

  ///  Margin ///
  EdgeInsets _margin;
  set margin(EdgeInsets value) => _margin = value;
  EdgeInsets get margin => _margin ?? EdgeInsets.symmetric(horizontal: 3);

  /// Border ///
  Border _border;
  set border(Border value) => _border = value;
  Border get border => _border ?? Border.all(color: Color(int.parse('ffdbdbdb', radix: 16)));

  /// Border Radius ///
  BorderRadius _borderRadius;
  set borderRadius(BorderRadius value) => _borderRadius = value;
  BorderRadius get borderRadius => _borderRadius ?? BorderRadius.circular(_suitup.baseRadius);
}
