import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/contact.dart';
import 'package:flutter_web_test/about/findme.dart';
import 'package:flutter_web_test/about/general.dart';
import 'package:flutter_web_test/about/technologies.dart';
import 'package:flutter_web_test/appbar.dart';
import 'package:flutter_web_test/data.dart';
import 'package:flutter_web_test/theme.dart';

class AboutScreen extends StatefulWidget {
  final bool scrollDown;
  const AboutScreen({
    super.key,
    required this.scrollDown,
  });

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  late ScrollController _controller;
  void _scrollDown() {
    _controller.animateTo(
      _controller.position.maxScrollExtent,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void initState() {
    if (widget.scrollDown) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _scrollDown());
    }
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const brandCollections = myBrandCollections;
    const findMeBrands = myFindMeBrands;
    const textAnimationDuration = Duration(milliseconds: 200);
    final textAnimationMilliseconds = textAnimationDuration.inMilliseconds;
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        children: [
          const PortfolioAppBar(),
          Padding(
            padding: appPadding,
            child: SelectionArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildGeneralInformation(
                    textAnimationDuration: textAnimationDuration,
                    textAnimationMilliseconds: textAnimationMilliseconds,
                  ),
                  const SizedBox(height: 48),
                  ...buildTechnologies(
                    brandCollections: brandCollections,
                    textAnimationDuration: textAnimationDuration,
                    textAnimationMilliseconds: textAnimationMilliseconds,
                    context: context,
                  ),
                  const SizedBox(height: 48),
                  ...buildFindMe(
                    context: context,
                    textAnimationDuration: textAnimationDuration,
                    textAnimationMilliseconds: textAnimationMilliseconds,
                    brands: findMeBrands,
                  ),
                  const SizedBox(height: 48),
                  ...buildContact(
                    context: context,
                    textAnimationDuration: textAnimationDuration,
                    textAnimationMilliseconds: textAnimationMilliseconds,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
