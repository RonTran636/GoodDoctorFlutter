import 'dart:math';

import '../resources/app_color.dart';
import 'package:flutter/material.dart';

class GradientCircularProgressIndicator extends StatelessWidget {
  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;
  final double progress;

  const GradientCircularProgressIndicator({
    super.key,
    required this.radius,
    required this.gradientColors,
    required this.progress,
    this.strokeWidth = 15,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size.fromRadius(radius),
      painter: GradientCircularProgressPainter(
        radius: radius,
        gradientColors: gradientColors,
        strokeWidth: strokeWidth,
        progress: progress,
      ),
    );
  }
}

class GradientCircularProgressPainter extends CustomPainter {
  const GradientCircularProgressPainter({
    required this.radius,
    required this.gradientColors,
    required this.strokeWidth,
    required this.progress,
  }) : assert(progress > 0 && progress < 1, "Progress must be between 0 and 1");

  final double radius;
  final List<Color> gradientColors;
  final double strokeWidth;
  final double progress;

  @override
  void paint(Canvas canvas, Size size) {
    size = Size.fromRadius(radius);
    double offset = strokeWidth / 2;
    Rect rect = Offset(offset, offset) & Size(size.width - strokeWidth, size.height - strokeWidth);
    final painter = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..color = AppColor.black56
      ..strokeWidth = strokeWidth;
    canvas.drawArc(rect, 0, 2 * pi, false, painter);
    painter.shader =
        SweepGradient(colors: gradientColors, startAngle: 0.0, endAngle: 2 * pi).createShader(rect);
    canvas.drawArc(rect, 1.5 * pi, 2 * progress * pi, false, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
