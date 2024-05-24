import 'package:flutter/material.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:go_router/go_router.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final photoSize = MediaQuery.of(context).size.width / 2;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            height: photoSize,
            width: photoSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(photoSize)),
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 48),
        AnimatedText(
          "Hi, I’m Kilian Markgraf",
          start: ">> ",
          style: Theme.of(context).textTheme.titleLarge,
          duration: const Duration(milliseconds: 1000),
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedText(
              "",
              start: ">> ",
              style: Theme.of(context).textTheme.bodyLarge,
              duration: const Duration(milliseconds: 1),
              delayMilliseconds: 1000,
            ),
            Flexible(
              child: AnimatedText(
                "I’m a passionate Software Developer based in Germany",
                style: Theme.of(context).textTheme.bodyLarge,
                duration: const Duration(milliseconds: 1500),
                delayMilliseconds: 1500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            FilledButton(
              onPressed: () => context.go("/about"),
              child: const Text("Learn More"),
            ),
            const SizedBox(width: 12),
            SizedBox(
              width: 56,
              child: FilledButton(
                onPressed: () => context.go("/about", extra: true),
                style: Theme.of(context).filledButtonTheme.style?.copyWith(
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.primary),
                    padding: const WidgetStatePropertyAll(EdgeInsets.all(8))),
                child: const Icon(Icons.alternate_email_rounded),
              ),
            )
          ],
        ),
      ],
    );
  }
}
