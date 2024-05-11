import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/brandcollectioncard.dart';
import 'package:flutter_web_test/about/clickablebrandcard.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/model/brandcollection.dart';
import 'package:flutter_web_test/widget/animation.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    const List<BrandCollection> brandCollections = [
      BrandCollection(
          name: "Mobile/Web-Development", collection: [Brand.flutter]),
      BrandCollection(name: "Backend-Development", collection: [
        Brand.spring,
        Brand.nodejs,
      ]),
      BrandCollection(name: "Deployment", collection: [
        Brand.git,
        Brand.docker,
        Brand.firebase,
      ]),
      BrandCollection(name: "Design/Prototyping", collection: [
        Brand.figma,
      ])
    ];
    const textAnimationDuration = Duration(milliseconds: 200);
    final textAnimationMilliseconds = textAnimationDuration.inMilliseconds;
    return SingleChildScrollView(
      child: SelectionArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            ),
            const SizedBox(height: 48),
            AnimatedText(
              "Technologies/ Tech Stack:",
              start: ">> ",
              style: Theme.of(context).textTheme.bodyLarge,
              duration: textAnimationDuration,
              delayMilliseconds: 8 * textAnimationMilliseconds,
            ),
            const SizedBox(height: 24),
            LayoutBuilder(builder: (context, constraints) {
              return Wrap(
                alignment: WrapAlignment.spaceEvenly,
                spacing: 24,
                runSpacing: 24,
                children: brandCollections
                    .map((e) => BrandCollectionCard(
                        collection: e, width: constraints.maxWidth / 2 - 12))
                    .toList(),
              );
            }),
            const SizedBox(height: 48),
            AnimatedText(
              "Find me:",
              start: ">> ",
              style: Theme.of(context).textTheme.bodyLarge,
              duration: textAnimationDuration,
              delayMilliseconds: 9 * textAnimationMilliseconds,
            ),
            const SizedBox(height: 24),
            const Wrap(
              alignment: WrapAlignment.spaceEvenly,
              spacing: 24,
              runSpacing: 24,
              children: [
                ClickableBrandCard(brand: Brand.linkedin),
                ClickableBrandCard(brand: Brand.github),
              ],
            )
          ],
        ),
      ),
    );
  }
}
