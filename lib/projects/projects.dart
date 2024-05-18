import 'package:flutter/material.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/model/platform.dart';
import 'package:flutter_web_test/model/project.dart';
import 'package:flutter_web_test/projects/projectcard.dart';
import 'package:flutter_web_test/widget/animation.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    const List<Project> projects = [
      Project(
        name: "trainIt: Workout Planner",
        description:
            "Manage your personal training-plan and track your personal records.",
        imageResourcePaths: [
          "assets/trainit/1_calendar.png",
          "assets/trainit/2_account.png",
          "assets/trainit/3_training_preview.png",
          "assets/trainit/4_statistics.png",
          "assets/trainit/5_edit_training_plan.png",
          "assets/trainit/6_dark_mode.png",
        ],
        techStack: [
          Brand.flutter,
          Brand.nodejs,
          Brand.docker,
          Brand.figma,
          Brand.firebase,
          Brand.git,
        ],
        platforms: [
          RuntimePlatform.iOS,
          RuntimePlatform.android,
        ],
      )
    ];
    return SelectionArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedText(
              "My Projects",
              start: ">> ",
              style: Theme.of(context).textTheme.titleLarge,
              duration: const Duration(milliseconds: 3000),
            ),
            const SizedBox(height: 16),
            ...projects.map((project) => ProjectCard(project))
          ],
        ),
      ),
    );
  }
}
