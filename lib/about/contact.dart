import 'package:flutter/material.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/logic/websitenavigator.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/widget/animation.dart';

List<Widget> buildContact(
    {required BuildContext context,
    required Duration textAnimationDuration,
    required int textAnimationMilliseconds}) {
  return [
    AnimatedText(
      "Contact:",
      start: ">> ",
      style: Theme.of(context).textTheme.bodyLarge,
      duration: textAnimationDuration,
      delayMilliseconds: 11 * textAnimationMilliseconds,
    ),
    const SizedBox(height: 24),
    Row(
      children: [
        AnimatedText(
          "Email: ",
          start: ">> ",
          style: Theme.of(context).textTheme.bodyMedium,
          duration: textAnimationDuration,
          delayMilliseconds: 12 * textAnimationMilliseconds,
        ),
        InkWell(
          onTap: () {
            WebsiteNavigator.getWebsiteNavigatorFactory()
                .navigateWebsite("mailto:$emailAddress");
          },
          child: AnimatedText(
            emailAddress,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
            duration: textAnimationDuration,
            delayMilliseconds: 13 * textAnimationMilliseconds,
          ),
        )
      ],
    ),
    const SizedBox(height: 8),
    Row(
      children: [
        AnimatedText(
          "Linked-In: ",
          start: ">> ",
          style: Theme.of(context).textTheme.bodyMedium,
          duration: textAnimationDuration,
          delayMilliseconds: 14 * textAnimationMilliseconds,
        ),
        InkWell(
          onTap: () {
            WebsiteNavigator.getWebsiteNavigatorFactory()
                .navigateWebsite(Brand.linkedin.url!);
          },
          child: AnimatedText(
            Brand.linkedin.url!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                ),
            duration: textAnimationDuration,
            delayMilliseconds: 15 * textAnimationMilliseconds,
          ),
        )
      ],
    ),
  ];
}
