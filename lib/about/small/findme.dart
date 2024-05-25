import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/clickablebrandcard.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/widget/animation.dart';

List<Widget> buildSmallFindMe(
    {required BuildContext context,
    required Duration textAnimationDuration,
    required int textAnimationMilliseconds,
    required List<Brand> brands}) {
  final brandSize = MediaQuery.of(context).size.width / 2 - 24;

  return [
    AnimatedText(
      "Find me:",
      start: ">> ",
      style: Theme.of(context).textTheme.bodyLarge,
      duration: textAnimationDuration,
      delayMilliseconds: 10 * textAnimationMilliseconds,
    ),
    const SizedBox(height: 24),
    Wrap(
      alignment: WrapAlignment.spaceEvenly,
      spacing: 0,
      runSpacing: 0,
      children: brands
          .map((e) => ClickableBrandCard(
                brand: e,
                iconSize: 68,
                padding: const EdgeInsets.all(16),
                width: brandSize,
              ))
          .toList(),
    )
  ];
}
