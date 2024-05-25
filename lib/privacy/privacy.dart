import 'package:flutter/material.dart';
import 'package:flutter_web_test/privacy/large/privacy.dart';
import 'package:flutter_web_test/privacy/small/privacy.dart';
import 'package:flutter_web_test/widget/responsivewidget.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: LargePrivacy(),
      smallScreen: SmallPrivacy(),
    );
  }
}
