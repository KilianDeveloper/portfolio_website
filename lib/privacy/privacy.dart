import 'package:flutter/material.dart';
import 'package:flutter_web_test/appbar.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/theme/theme.dart';
import 'package:flutter_web_test/widget/animation.dart';

class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    final appPadding = loadPadding(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          const PortfolioAppBar(),
          Padding(
            padding: appPadding,
            child: SelectionArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedText(
                    "Privacy",
                    start: ">> ",
                    style: Theme.of(context).textTheme.titleLarge,
                    duration: const Duration(milliseconds: 500),
                  ),
                  const SizedBox(height: 80),
                  const Text(privacyText),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
