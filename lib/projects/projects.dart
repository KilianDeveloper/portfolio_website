import 'package:flutter/material.dart';
import 'package:flutter_web_test/appbar.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/projects/projectcard.dart';
import 'package:flutter_web_test/theme.dart';
import 'package:flutter_web_test/widget/animation.dart';

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
                    "My Projects",
                    start: ">> ",
                    style: Theme.of(context).textTheme.titleLarge,
                    duration: const Duration(milliseconds: 500),
                  ),
                  const SizedBox(height: 16),
                  ...projects.map((project) => ProjectCard(project))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
