import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/small/contact.dart';
import 'package:flutter_web_test/about/small/findme.dart';
import 'package:flutter_web_test/about/small/general.dart';
import 'package:flutter_web_test/about/small/technologies.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/widget/small/appbar.dart';

class SmallAbout extends StatelessWidget {
  final ScrollController controller;
  const SmallAbout({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    const brandCollections = myBrandCollections;
    const findMeBrands = myFindMeBrands;
    const textAnimationDuration = Duration(milliseconds: 200);
    final textAnimationMilliseconds = textAnimationDuration.inMilliseconds;

    return SmallPortfolioAppBar(
      scrollController: controller,
      isScrollable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSmallGeneralInformation(
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
          ),
          const SizedBox(height: 48),
          ...buildSmallTechnologies(
            brandCollections: brandCollections,
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
            context: context,
          ),
          const SizedBox(height: 48),
          ...buildSmallFindMe(
            context: context,
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
            brands: findMeBrands,
          ),
          const SizedBox(height: 48),
          ...buildSmallContact(
            context: context,
            textAnimationDuration: textAnimationDuration,
            textAnimationMilliseconds: textAnimationMilliseconds,
          )
        ],
      ),
    );
  }
}
