import 'package:flutter/material.dart';
import 'package:flutter_web_test/projects/large/projects.dart';
import 'package:flutter_web_test/projects/small/projects.dart';
import 'package:flutter_web_test/widget/responsivewidget.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      largeScreen: LargeProjects(),
      smallScreen: SmallProjects(),
    );
  }
}
