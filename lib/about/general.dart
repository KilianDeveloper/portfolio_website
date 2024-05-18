import 'package:flutter/material.dart';
import 'package:flutter_web_test/widget/animation.dart';

Widget buildGeneralInformation({
  required Duration textAnimationDuration,
  required int textAnimationMilliseconds,
}) =>
    _GeneralInformation(
      textAnimationDuration: textAnimationDuration,
      textAnimationMilliseconds: textAnimationMilliseconds,
    );

class _GeneralInformation extends StatelessWidget {
  const _GeneralInformation({
    required this.textAnimationDuration,
    required this.textAnimationMilliseconds,
  });

  final Duration textAnimationDuration;
  final int textAnimationMilliseconds;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedText(
                "About me:",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyLarge,
                duration: textAnimationDuration,
              ),
              const SizedBox(height: 24),
              AnimatedText(
                "Name: Kilian Markgraf",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyMedium,
                duration: textAnimationDuration,
                delayMilliseconds: textAnimationMilliseconds,
              ),
              const SizedBox(height: 8),
              AnimatedText(
                "Age: 18",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyMedium,
                duration: textAnimationDuration,
                delayMilliseconds: 2 * textAnimationMilliseconds,
              ),
              const SizedBox(height: 8),
              AnimatedText(
                "Location: Dresden, Germany",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyMedium,
                duration: textAnimationDuration,
                delayMilliseconds: 3 * textAnimationMilliseconds,
              ),
              const SizedBox(height: 48),
              AnimatedText(
                "Experience:",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyLarge,
                duration: textAnimationDuration,
                delayMilliseconds: 4 * textAnimationMilliseconds,
              ),
              const SizedBox(height: 24),
              AnimatedText(
                "Coding for 7 years",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyMedium,
                duration: textAnimationDuration,
                delayMilliseconds: 5 * textAnimationMilliseconds,
              ),
              const SizedBox(height: 8),
              AnimatedText(
                "Experience in the company 3m5. Media Solutions Gmbh as internship and holiday worker",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyMedium,
                duration: textAnimationDuration,
                delayMilliseconds: 6 * textAnimationMilliseconds,
              ),
              const SizedBox(height: 8),
              AnimatedText(
                "Experience in Mobile App Development, Backend-Development and Web-Development in modern technologies",
                start: ">> ",
                style: Theme.of(context).textTheme.bodyMedium,
                duration: textAnimationDuration,
                delayMilliseconds: 7 * textAnimationMilliseconds,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: LayoutBuilder(builder: (context, constraints) {
            return Container(
              color: Colors.white,
              height: constraints.maxWidth,
              width: constraints.maxWidth,
            );
          }),
        )
      ],
    );
  }
}
