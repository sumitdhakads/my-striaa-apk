import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final double dashWidth;
  final double dashSpace;
  final Paint _paint;

  DashedLinePainter({required this.dashWidth, required this.dashSpace, required Color color})
      : _paint = Paint()
          ..color = color
          ..strokeCap = StrokeCap.round
          ..strokeWidth = 0.5;

  @override
  void paint(Canvas canvas, Size size) {
    double startX = 0;
    final double endX = size.width;
    
    while (startX < endX) {
      // Draw the dash
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), _paint);
      // Move to the next point (dash width + space)
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(DashedLinePainter oldDelegate) {
    return oldDelegate.dashWidth != dashWidth ||
        oldDelegate.dashSpace != dashSpace ||
        oldDelegate._paint.color != _paint.color;
  }
}

class DashedLine extends StatelessWidget {
  final double width;
  final double dashWidth;
  final double dashSpace;
  final Color color;

  const DashedLine({super.key, 
    required this.width,
    this.dashWidth = 5.0,
    this.dashSpace = 3.0,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, 0),  // width defined by user, height can be 0 for a horizontal line
      painter: DashedLinePainter(
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        color: color,
      ),
    );
  }
}