import 'package:flutter/material.dart';
import 'package:flutter_web_test/home/small/header.dart';
import 'package:flutter_web_test/home/small/techstackcard.dart';
import 'package:flutter_web_test/widget/slidein.dart';
import 'package:flutter_web_test/widget/small/appbar.dart';

class SmallHome extends StatelessWidget {
  const SmallHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const SmallPortfolioAppBar(
      fillSpace: true,
      child: Stack(
        children: [
          HomeHeader(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SlideInWidget(child: TechStackCard()),
          )
        ],
      ),
    );
  }
}
