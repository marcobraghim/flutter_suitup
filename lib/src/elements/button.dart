import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

//
// .button {
//   background-color: white;
//   border-color: #dbdbdb;
//   border-width: 1px;
//   color: #363636;
//   cursor: pointer;
//   justify-content: center;
//   padding-bottom: calc(0.5em - 1px);
//   padding-left: 1em;
//   padding-right: 1em;
//   padding-top: calc(0.5em - 1px);
//   text-align: center;
//   white-space: nowrap;
// }
//

enum ButtonType {
  none,
  white,
  light,
  dark,
  black,
  text,
  ghost,
  primary,
  link,
  info,
  success,
  warning,
  danger,
}

class Button extends StatelessWidget {
  final Widget child;
  final ButtonType type;
  final Function onTap;
  final bool active;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color color;
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
    @required this.onTap,
    this.active = true,
    this.padding,
    this.margin,
    this.color,
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

    var computedColor = color ?? _computeColorByType();

    // @todo Default text style

    return GestureDetector(
      onTap: active ? onTap : null,
      child: Container(
        padding: padding ?? bs.padding,
        margin: margin ?? bs.margin,
        decoration: BoxDecoration(
          color: computedColor,
          borderRadius: borderRadius ?? bs.borderRadius,
          border: border ?? bs.border,
        ),
        child: child,
      ),
    );
  }

  Color _computeColorByType() {
    Color computedColor;
    switch (type) {
      case ButtonType.white:
        computedColor = Color.fromRGBO(255, 255, 255, 1); // @todo setting
        break;
      case ButtonType.light:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
        break;
      case ButtonType.dark:
        computedColor = Color.fromRGBO(0, 0, 0, 1); // @todo setting
        break;
      case ButtonType.black:
        computedColor = Color.fromRGBO(0, 0, 0, 1); // @todo setting
        break;
      case ButtonType.text:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
        break;
      case ButtonType.ghost:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
        break;
      case ButtonType.primary:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
        break;
      case ButtonType.link:
        computedColor = Color.fromRGBO(72, 95, 199, 1); // @todo setting
        break;
      case ButtonType.info:
        computedColor = Color.fromRGBO(62, 142, 208, 1); // @todo setting
        break;
      case ButtonType.success:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
        break;
      case ButtonType.warning:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
        break;
      case ButtonType.danger:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
        break;
      case ButtonType.primary:
      default:
        computedColor = Color.fromRGBO(0, 209, 178, 1); // @todo setting
    }
    return computedColor;
  }
}
