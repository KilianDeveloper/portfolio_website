import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme/color.dart';
import 'dart:ui' as ui;

class DrawerBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    final paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width / 2, 0),
        Offset(size.width / 2, size.height),
        <Color>[
          colorScheme.surfaceContainerHighest.withAlpha(150),
          colorScheme.surfaceContainerHighest.withAlpha(0),
        ],
      );
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(DrawerBackgroundPainter oldDelegate) => false;
}
