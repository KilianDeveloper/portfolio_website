import 'package:flutter/material.dart';
import 'package:flutter_web_test/widget/large/background.dart';
import 'package:flutter_web_test/widget/responsivewidget.dart';
import 'package:flutter_web_test/widget/small/background.dart';

class PageBackground extends StatelessWidget {
  final Widget child;
  const PageBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ResponsiveWidget(
          largeScreen: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: CustomPaint(
              painter: LargePageBackgroundPainter(),
            ),
          ),
          smallScreen: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: CustomPaint(
                  painter: SmallPageBackgroundPainter(),
                ),
              ),
            ],
          ),
        ),
        child,
      ],
    );
  }
}
