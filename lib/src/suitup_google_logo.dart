// written by @lesliearkorful
import 'package:flutter/material.dart';

class SuitupGoogleLogo extends StatelessWidget {
  final double size;
  final Color bgColor;
  final Color? monoColor;

  const SuitupGoogleLogo({
    Key? key,
    this.size = 300,
    this.bgColor = Colors.transparent,
    this.monoColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: bgColor,
      child: CustomPaint(
        painter: GoogleLogoPainter(monoColor),
        size: Size.square(size),
      ),
    );
  }
}

class GoogleLogoPainter extends CustomPainter {
  final Color? monoColor;

  GoogleLogoPainter(this.monoColor);

  @override
  bool shouldRepaint(oldDelegate) => true;

  @override
  void paint(Canvas canvas, Size size) {
    final length = size.width;
    final verticalOffset = (size.height / 2) - (length / 2);
    final bounds = Offset(0, verticalOffset) & Size.square(length);
    final center = bounds.center;
    final arcThickness = size.width / 4.5;
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = arcThickness;

    void drawArc(double startAngle, double sweepAngle, Color color) {
      paint.color = color;
      canvas.drawArc(bounds, startAngle, sweepAngle, false, paint);
    }

    drawArc(3.5, 1.9, monoColor ?? Colors.red);
    drawArc(2.5, 1.0, monoColor ?? Colors.amber);
    drawArc(0.9, 1.6, monoColor ?? Colors.green.shade600);
    drawArc(-0.18, 1.1, monoColor ?? Colors.blue.shade600);

    canvas.drawRect(
      Rect.fromLTRB(
        center.dx,
        center.dy - (arcThickness / 2),
        bounds.centerRight.dx + (arcThickness / 2) - 4,
        bounds.centerRight.dy + (arcThickness / 2),
      ),
      paint
        ..color = monoColor ?? Colors.blue.shade600
        ..style = PaintingStyle.fill
        ..strokeWidth = 0,
    );
  }
}
