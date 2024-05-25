import 'package:flutter/material.dart';
import 'package:flutter_web_test/terms/large/terms.dart';
import 'package:flutter_web_test/terms/small/terms.dart';
import 'package:flutter_web_test/widget/responsivewidget.dart';

class TermsOfUsageScreen extends StatelessWidget {
  const TermsOfUsageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: LargeTerms(),
      smallScreen: SmallTerms(),
    );
  }
}
