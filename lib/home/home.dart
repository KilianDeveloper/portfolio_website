import 'package:flutter/material.dart';
import 'package:flutter_web_test/home/large/home.dart';
import 'package:flutter_web_test/home/small/home.dart';
import 'package:flutter_web_test/widget/responsivewidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      smallScreen: SmallHome(),
      largeScreen: LargeHome(),
    );
  }
}
