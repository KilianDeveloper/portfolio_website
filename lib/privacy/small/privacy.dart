import 'package:flutter/material.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:flutter_web_test/widget/small/appbar.dart';

class SmallPrivacy extends StatelessWidget {
  const SmallPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return SmallPortfolioAppBar(
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
          const SizedBox(height: 48),
          const Text(privacyText),
        ],
      ),
    );
  }
}
