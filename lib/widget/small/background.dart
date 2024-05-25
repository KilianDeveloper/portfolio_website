import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme/color.dart';

class SmallPageBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final offsetCircle1 = Offset(size.width, 0);
    final radiusCircle1 = size.height / 2 * .6;
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width / 2, size.height),
        Offset(size.width / 2, 0),
        <Color>[
          colorScheme.surfaceContainerHighest,
          colorScheme.surface.withAlpha(0),
        ],
      );
    canvas.drawRect(rect, paint);
    final paint2 = Paint()
      ..shader = RadialGradient(
        colors: [
          Colors.white.withAlpha(50),
          Colors.white.withAlpha(0),
        ],
      ).createShader(Rect.fromCircle(
        center: offsetCircle1,
        radius: radiusCircle1,
      ));
    canvas.drawCircle(
      offsetCircle1,
      radiusCircle1,
      paint2,
    );
  }

  @override
  bool shouldRepaint(SmallPageBackgroundPainter oldDelegate) => false;
}

class EllipsisTransform extends GradientTransform {
  final double x;
  final double factor;

  const EllipsisTransform({required this.x, this.factor = 2.6});
  @override
  Matrix4 transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.identity()
      ..translate(x, 0)
      ..scale(factor, 1.0, 1.0)
      ..translate(-(x), 0);
  }
}
