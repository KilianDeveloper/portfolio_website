import 'package:flutter/material.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:flutter_web_test/widget/large/appbar.dart';

class LargePrivacy extends StatelessWidget {
  const LargePrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return LargePortfolioAppBar(
      isScrollable: true,
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
    );
  }
}
