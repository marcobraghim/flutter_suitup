import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

enum ButtonType { none, white, light, dark, black, text, ghost, primary, link, info, success, warning, danger }

enum ButtonSize { small, normal, medium, large }

class Button extends StatefulWidget {
  final Widget child;
  final ButtonType type;
  final bool isLight;
  final bool isOutline;
  final Color outlineBackground;
  final ButtonSize size;
  final Function onTap;
  final Duration onTapDuration;
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
  /// When [onTapDuration] is explicit null no tap animation is applied
  const Button({
    Key key,
    @required this.child,
    this.type = ButtonType.primary,
    this.isLight = false,
    this.isOutline = false,
    this.outlineBackground,
    this.size = ButtonSize.normal,
    @required this.onTap,
    this.onTapDuration = const Duration(milliseconds: 60),
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
        assert((isLight == true && isOutline == true) == false, "Outline buttons can't be light"),
        assert((isOutline == false && outlineBackground != null) == false,
            "'outlineBackground' parameter requires 'isOutline' to be true"),
        super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  double _currOpacity = 1;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    //
    // Button Settings
    final button = SuitupSettings.instance.buttons;

    // Compute the color of the button
    var computedColor = widget.color ?? _computeColorByType();
    if (widget.active == false && widget.inactiveColor != null) {
      computedColor = widget.inactiveColor;
    }

    var computedBorder = widget.border;
    if (computedBorder == null) {
      if (widget.isOutline) {
        computedBorder = Border.fromBorderSide(BorderSide(color: computedColor));
      } else {
        computedBorder = (widget.type == ButtonType.white) ? button.border : null;
      }
    }

    return GestureDetector(
      onTap: widget.active ? widget.onTap : null,
      onTapDown: (details) {
        if (widget.onTapDuration != null) {
          _isPressed = true;
          setState(() => _currOpacity = .6);
        }
      },
      onTapUp: (details) => _isPressed = false,
      onTapCancel: () => _isPressed = false,
      child: AnimatedOpacity(
        duration: widget.onTapDuration ?? Duration(),
        opacity: _currOpacity,
        onEnd: () {
          Timer.periodic(Duration(milliseconds: 10), (timer) {
            if (_isPressed == false) {
              timer.cancel();
              setState(() => _currOpacity = 1);
            }
          });
        },
        child: Container(
          width: widget.width,
          height: widget.height,
          alignment: widget.alignment ?? button.alignment,
          padding: widget.padding ?? button.getPadding(widget.size),
          margin: widget.margin ?? button.margin,
          decoration: BoxDecoration(
            color: widget.isOutline ? widget.outlineBackground ?? Color(0).withOpacity(0.0) : computedColor,
            borderRadius: widget.borderRadius ?? button.borderRadius,
            border: computedBorder,
          ),
          child: widget.child,
        ),
      ),
    );
  }

  Color _computeColorByType() {
    final colors = SuitupSettings.instance.colors;

    Color computedColor;
    switch (widget.type) {
      case ButtonType.light:
        computedColor = colors.light;
        break;
      case ButtonType.dark:
        computedColor = colors.dark;
        break;
      case ButtonType.black:
        computedColor = colors.black;
        break;
      case ButtonType.text:
      case ButtonType.ghost:
        computedColor = colors.text;
        break;
      case ButtonType.link:
        computedColor = widget.isLight ? colors.lightLink : colors.link;
        break;
      case ButtonType.info:
        computedColor = widget.isLight ? colors.lightInfo : colors.info;
        break;
      case ButtonType.success:
        computedColor = widget.isLight ? colors.lightSuccess : colors.success;
        break;
      case ButtonType.warning:
        computedColor = widget.isLight ? colors.lightWarning : colors.warning;
        break;
      case ButtonType.danger:
        computedColor = widget.isLight ? colors.lightDanger : colors.danger;
        break;
      case ButtonType.primary:
        computedColor = widget.isLight ? colors.lightPrimary : colors.primary;
        break;
      case ButtonType.white:
      default:
        computedColor = colors.white;
    }
    return computedColor;
  }
}
