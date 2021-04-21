import 'package:flutter/widgets.dart';
import 'package:flutter_suitup/flutter_suitup.dart';

class Box extends StatefulWidget {
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Alignment alignment;
  final EdgeInsets padding;
  final double width;
  final double height;
  final List<BoxShadow> shadows;
  final BoxConstraints constraints;
  final EdgeInsets margin;
  final Widget child;

  Box({
    Key key,
    this.backgroundColor,
    this.borderRadius,
    this.alignment,
    this.padding,
    this.width,
    this.height,
    this.shadows,
    this.constraints,
    this.margin,
    this.child,
  }) : super(key: key);

  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    final suitup = SuitupSettings.instance;
    final colors = suitup.colors;

    return Container(
      padding: widget.padding ?? EdgeInsets.all(suitup.rem * 1.25),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? colors.white,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(6),
        boxShadow: widget.shadows ??
            [
              BoxShadow(
                blurRadius: suitup.rem,
                spreadRadius: (suitup.rem * 0.1250) * -1,
                color: Color.fromRGBO(10, 10, 10, 0.1),
                offset: Offset(0, suitup.rem * 0.5),
              ),
              BoxShadow(
                blurRadius: 0,
                spreadRadius: suitup.rem,
                color: Color.fromRGBO(10, 10, 10, 0.02),
                offset: Offset(0, 0),
              ),
            ],
      ),
      child: widget.child,
    );
  }
}
