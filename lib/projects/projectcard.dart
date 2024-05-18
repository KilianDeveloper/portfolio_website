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
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 36),
            Text(
              "Screenshots:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            ImageRow(
              images: project.imageResourcePaths,
            ),
            const SizedBox(height: 24),
            Text(
              "Description: ${project.description}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(
              "Compatible Platforms: ${project.platforms.map((e) => e.name).join(", ")}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            Text(
              "Tech-Stack: ${project.techStack.map((e) => e.name).join(", ")}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
