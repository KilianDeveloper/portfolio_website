import 'package:flutter/material.dart';
import 'package:flutter_web_test/model/project.dart';
import 'package:flutter_web_test/widget/imagerow.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  const ProjectCard(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.name,
            ),
            const SizedBox(height: 24),
            const Text("Screenshots:"),
            const SizedBox(height: 12),
            ImageRow(
              images: project.imageResourcePaths,
            ),
          ],
        ),
      ),
    );
  }
}
