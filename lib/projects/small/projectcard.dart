import 'package:flutter/material.dart';
import 'package:flutter_web_test/model/project.dart';
import 'package:flutter_web_test/widget/imagerow.dart';
import 'package:flutter_web_test/widget/linkbutton.dart';

class SmallProjectCard extends StatelessWidget {
  final Project project;
  const SmallProjectCard(this.project, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    project.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              "Screenshots:",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ImageRow(
              height: 300,
              cornerRadius: 12,
              space: 8,
              images: project.imageResourcePaths,
            ),
            const SizedBox(height: 24),
            Text(
              "Description: ${project.description}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Text(
              "Compatible Platforms: ${project.platforms.map((e) => e.name).join(", ")}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Text(
              "Tech-Stack: ${project.techStack.map((e) => e.name).join(", ")}",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Text(
              "Sourcecode:",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: project.sources
                  .map((e) => LinkButton(repository: e))
                  .toList(),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
