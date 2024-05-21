import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme.dart';

class PageBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final offsetCircle1 = Offset(-size.height / 2 * .1, size.height / 2);
    final offsetCircle2 = Offset(size.width, size.height / 2);
    final radiusCircle1 = size.height / 2 * .6;
    final radiusCircle2 = size.height / 2 * .8;

    final paintOval = Paint()
      ..shader = RadialGradient(
        colors: [
          colorScheme.surfaceContainerHighest,
          colorScheme.surfaceContainerHighest.withAlpha(0),
        ],
        transform: EllipsisTransform(x: size.width / 2),
      ).createShader(Rect.fromCircle(
        center: Offset(size.width / 2, size.height),
        radius: size.height / 2 * .8,
      ));
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
    final paint3 = Paint()
      ..shader = RadialGradient(
        colors: [
          Colors.white.withAlpha(40),
          Colors.white.withAlpha(0),
        ],
        transform: EllipsisTransform(x: offsetCircle2.dx, factor: 2),
      ).createShader(Rect.fromCircle(
        center: offsetCircle2,
        radius: radiusCircle2,
      ));
    canvas.drawCircle(
      offsetCircle1,
      radiusCircle1,
      paint2,
    );
    canvas.drawOval(
      ui.Rect.fromCenter(
        center: offsetCircle2,
        width: radiusCircle2 * 2 * 2,
        height: radiusCircle2 * 2,
      ),
      paint3,
    );
    canvas.drawOval(
      ui.Rect.fromCenter(
        center: Offset(
          size.width / 2,
          size.height,
        ),
        width: size.width * 1.3,
        height: size.height * .8,
      ),
      paintOval,
    );
  }

  @override
  bool shouldRepaint(PageBackgroundPainter oldDelegate) => false;
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
