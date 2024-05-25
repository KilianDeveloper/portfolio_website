import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/large/contact.dart';
import 'package:flutter_web_test/about/large/findme.dart';
import 'package:flutter_web_test/about/large/general.dart';
import 'package:flutter_web_test/about/large/technologies.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/widget/large/appbar.dart';

class LargeAbout extends StatelessWidget {
  final ScrollController controller;
  const LargeAbout({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    const brandCollections = myBrandCollections;
    const findMeBrands = myFindMeBrands;
    const textAnimationDuration = Duration(milliseconds: 200);
    final textAnimationMilliseconds = textAnimationDuration.inMilliseconds;
    return LargePortfolioAppBar(
      isScrollable: true,
      scrollController: controller,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildLargeGeneralInformation(
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
          ),
          const SizedBox(height: 48),
          ...buildLargeTechnologies(
            brandCollections: brandCollections,
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
            context: context,
          ),
          const SizedBox(height: 48),
          ...buildLargeFindMe(
            context: context,
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
            brands: findMeBrands,
          ),
          const SizedBox(height: 48),
          ...buildLargeContact(
            context: context,
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
          )
        ],
      ),
    );
  }
}
