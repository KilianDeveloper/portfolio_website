import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/brandcollectioncard.dart';
import 'package:flutter_web_test/model/brandcollection.dart';
import 'package:flutter_web_test/widget/animation.dart';
import 'package:flutter_web_test/widget/slidein.dart';

List<Widget> buildLargeTechnologies({
  required List<BrandCollection> brandCollections,
  required Duration textAnimationDuration,
  required int textAnimationMilliseconds,
  required BuildContext context,
}) {
  return [
    AnimatedText(
      "Technologies/ Tech Stack:",
      start: ">> ",
      style: Theme.of(context).textTheme.bodyLarge,
      duration: textAnimationDuration,
      delayMilliseconds: 9 * textAnimationMilliseconds,
    ),
    const SizedBox(height: 24),
    LayoutBuilder(builder: (context, constraints) {
      return Wrap(
        alignment: WrapAlignment.spaceEvenly,
        spacing: 24,
        runSpacing: 24,
        children: brandCollections
            .map((e) => SlideInWidget(
                  child: BrandCollectionCard(
                      collection: e,
                      width: math.max(0, (constraints.maxWidth / 2 - 12))),
                ))
            .toList(),
      );
    })
  ];
}
