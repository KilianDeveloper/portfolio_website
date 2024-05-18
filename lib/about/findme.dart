import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/clickablebrandcard.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/widget/animation.dart';

List<Widget> buildFindMe(
    {required BuildContext context,
    required Duration textAnimationDuration,
    required int textAnimationMilliseconds,
    required List<Brand> brands}) {
  return [
    AnimatedText(
      "Find me:",
      start: ">> ",
      style: Theme.of(context).textTheme.bodyLarge,
      duration: textAnimationDuration,
      delayMilliseconds: 9 * textAnimationMilliseconds,
    ),
    const SizedBox(height: 24),
    Wrap(
      alignment: WrapAlignment.spaceEvenly,
      spacing: 24,
      runSpacing: 24,
      children: brands.map((e) => ClickableBrandCard(brand: e)).toList(),
    )
  ];
}
