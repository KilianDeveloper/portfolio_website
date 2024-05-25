import 'package:flutter/material.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/projects/large/projectcard.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:flutter_web_test/widget/large/appbar.dart';
import 'package:flutter_web_test/widget/slidein.dart';

class LargeProjects extends StatelessWidget {
  const LargeProjects({super.key});

  @override
  Widget build(BuildContext context) {
    const projects = myProjects;
    return LargePortfolioAppBar(
      isScrollable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedText(
            "My Projects",
            start: ">> ",
            style: Theme.of(context).textTheme.titleLarge,
            duration: const Duration(milliseconds: 500),
          ),
          const SizedBox(height: 80),
          ...projects
              .map((project) => SlideInWidget(child: LargeProjectCard(project)))
        ],
      ),
    );
  }
}
