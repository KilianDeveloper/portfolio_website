import 'package:flutter/material.dart';
import 'package:flutter_web_test/appbar.dart';
import 'package:flutter_web_test/home/header.dart';
import 'package:flutter_web_test/home/techstackcard.dart';
import 'package:flutter_web_test/theme.dart';
import 'package:flutter_web_test/widget/slidein.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PortfolioAppBar(),
        Expanded(
          child: Padding(
            padding: appPadding,
            child: Container(
              color: Colors.transparent,
              child: const SelectionArea(
                child: Stack(
                  children: [
                    HomeHeader(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SlideInWidget(child: TechStackCard()),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
