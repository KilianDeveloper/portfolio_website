import 'package:flutter/material.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/projects/projectcard.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:flutter_web_test/widget/large/appbar.dart';
import 'package:flutter_web_test/widget/slidein.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    const projects = myProjects;
    return SingleChildScrollView(
      child: LargePortfolioAppBar(
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
                .map((project) => SlideInWidget(child: ProjectCard(project)))
          ],
        ),
      ),
    );
  }
}
