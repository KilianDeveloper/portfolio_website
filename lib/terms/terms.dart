import 'package:flutter/material.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/theme/theme.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:flutter_web_test/widget/large/appbar.dart';

class TermsOfUsageScreen extends StatefulWidget {
  const TermsOfUsageScreen({super.key});

  @override
  State<TermsOfUsageScreen> createState() => _TermsOfUsageScreenState();
}

class _TermsOfUsageScreenState extends State<TermsOfUsageScreen> {
  @override
  Widget build(BuildContext context) {
    final appPadding = loadPadding(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          const LargePortfolioAppBar(),
          Padding(
            padding: appPadding,
            child: SelectionArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedText(
                    "Terms of use",
                    start: ">> ",
                    style: Theme.of(context).textTheme.titleLarge,
                    duration: const Duration(milliseconds: 500),
                  ),
                  const SizedBox(height: 80),
                  const Text(termsOfUsageText),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
