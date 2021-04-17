import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

enum ButtonType { none, white, light, dark, black, text, ghost, primary, link, info, success, warning, danger }

enum ButtonSize { small, normal, medium, large }

class Button extends StatefulWidget {
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
  Button({
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
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with SingleTickerProviderStateMixin {
  Color _computedColor;

  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    // Compute the color of the button
    _computedColor = widget.color ?? _computeColorByType();
    if (widget.active == false && widget.inactiveColor != null) {
      _computedColor = widget.inactiveColor;
    }

    // Tap animation
    _controller = AnimationController(duration: Duration(milliseconds: 100), vsync: this);
    _animation = Tween<double>(begin: _computedColor.opacity, end: 0.0).animate(_controller);
    _animation.addListener(() => setState(() {}));
    _controller.value = _computedColor.opacity;

    if (widget.type == ButtonType.ghost) {
      print('Ghost opacity: ${_computedColor.opacity} - ${_controller.lowerBound} - ${_controller.upperBound}');
    }

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    // Button Settings
    final bs = SuitupSettings.instance.buttons;

    print([_computedColor, _controller.value]);

    return GestureDetector(
      onTap: widget.active ? widget.onTap : null,
      onTapDown: (details) => _controller.animateBack(0.3, duration: Duration(milliseconds: 50)),
      onTapUp: (details) => _controller.forward(),
      onTapCancel: () => _controller.forward(),
      child: Container(
        width: widget.width,
        height: widget.height,
        alignment: widget.alignment ?? bs.alignment,
        padding: widget.padding ?? bs.getPadding(widget.size),
        margin: widget.margin ?? bs.margin,
        decoration: BoxDecoration(
          color: _computedColor.withOpacity(_controller.value),
          borderRadius: widget.borderRadius ?? bs.borderRadius,
          border: widget.border ?? (widget.type == ButtonType.white) ? bs.border : null,
        ),
        child: widget.child,
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
