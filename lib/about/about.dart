import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/large/about.dart';
import 'package:flutter_web_test/about/small/about.dart';
import 'package:flutter_web_test/widget/responsivewidget.dart';

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
    return ResponsiveWidget(
      smallScreen: SmallAbout(
        controller: _controller,
      ),
      largeScreen: LargeAbout(
        controller: _controller,
      ),
    );
  }
}
