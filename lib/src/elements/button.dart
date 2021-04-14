import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

enum ButtonType { none, white, light, dark, black, text, ghost, primary, link, info, success, warning, danger }

enum ButtonSize { small, normal, medium, large }

class Button extends StatelessWidget {
  final Widget child;
  final ButtonType type;
  final bool isLight;
  final ButtonSize size;
  final Function onTap;
  final bool active;
  final Alignment alignment;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final double width;
  final double height;
  final Color color;
  final Color inactiveColor;
  final Border border;
  final BorderRadius borderRadius;

  /// A button element
  ///
  /// When [color] is defined the [type] parameter is completely ignored.
  ///
  const Button({
    Key key,
    @required this.child,
    this.type = ButtonType.primary,
    this.isLight = false,
    this.size = ButtonSize.normal,
    @required this.onTap,
    this.active = true,
    this.alignment,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.color,
    this.inactiveColor,
    this.border,
    this.borderRadius,
  })  : assert(child != null, 'This element needs a child'),
        assert(type != null || color != null, 'You need to provide a TYPE or a COLOR to your button'),
        assert(onTap != null, 'Provide an action to trigger on tap this ACTIVE button'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    // Button Settings
    final bs = SuitupSettings.instance.buttonSettings;

    // Compute the color of the button
    var computedColor = color ?? _computeColorByType();
    if (active == false && inactiveColor != null) {
      computedColor = inactiveColor;
    }

    return GestureDetector(
      onTap: active ? onTap : null,
      child: Container(
        width: width,
        height: height,
        alignment: alignment ?? bs.alignment,
        padding: padding ?? bs.getPadding(size),
        margin: margin ?? bs.margin,
        decoration: BoxDecoration(
          color: computedColor,
          borderRadius: borderRadius ?? bs.borderRadius,
          border: border ?? (type == ButtonType.white) ? bs.border : null,
        ),
        child: child,
      ),
    );
  }

  Color _computeColorByType() {
    Color computedColor;

    switch (type) {
      case ButtonType.light:
        computedColor = Color(int.parse('FFf5f5f5', radix: 16));
        break;
      case ButtonType.dark:
        computedColor = Color(int.parse('FF363636', radix: 16));
        break;
      case ButtonType.black:
        computedColor = Color(int.parse('FF000000', radix: 16));
        break;
      case ButtonType.text:
      case ButtonType.ghost:
        computedColor = Color(int.parse('00000000', radix: 16));
        break;
      case ButtonType.link:
        computedColor = Color(int.parse(isLight ? 'FFeff1fa' : 'FF485fc7', radix: 16));
        break;
      case ButtonType.info:
        computedColor = Color(int.parse(isLight ? 'FFeff5fb' : 'FF3e8ed0', radix: 16));
        break;
      case ButtonType.success:
        computedColor = Color(int.parse(isLight ? 'FFeffaf5' : 'FF48c78e', radix: 16));
        break;
      case ButtonType.warning:
        computedColor = Color(int.parse(isLight ? 'FFfffaeb' : 'FFffe08a', radix: 16));
        break;
      case ButtonType.danger:
        computedColor = Color(int.parse(isLight ? 'FFfeecf0' : 'FFf14668', radix: 16));
        break;
      case ButtonType.primary:
        computedColor = Color(int.parse(isLight ? 'FFebfffc' : 'FF00d1b2', radix: 16));
        break;
      case ButtonType.white:
      default:
        computedColor = Color(int.parse('FFFFFFFF', radix: 16));
    }
    return computedColor;
  }
}
