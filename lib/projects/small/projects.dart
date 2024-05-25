import 'package:flutter/material.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/projects/small/projectcard.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:flutter_web_test/widget/slidein.dart';
import 'package:flutter_web_test/widget/small/appbar.dart';

class SmallProjects extends StatelessWidget {
  const SmallProjects({super.key});

  @override
  Widget build(BuildContext context) {
    const projects = myProjects;
    return SmallPortfolioAppBar(
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
          const SizedBox(height: 48),
          ...projects
              .map((project) => SlideInWidget(child: SmallProjectCard(project)))
        ],
      ),
    );
  }
}
