import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme/large.dart';
import 'package:flutter_web_test/theme/small.dart';
import 'package:flutter_web_test/widget/responsivewidget.dart';

ThemeData buildTheme(BuildContext context) {
  if (ResponsiveWidget.isSmallScreen(context)) {
    return buildSmallTheme();
  } else {
    return buildLargeTheme();
  }
}

EdgeInsets loadPadding(BuildContext context) {
  if (ResponsiveWidget.isSmallScreen(context)) {
    return buildSmallPadding();
  } else {
    return buildSmallPadding();
  }
}

double loadPaddingLeft(BuildContext context) {
  if (ResponsiveWidget.isSmallScreen(context)) {
    return buildSmallPaddingLeft();
  } else {
    return buildLargePaddingLeft();
  }
}
