import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter_web_test/router.dart';
import 'package:flutter_web_test/theme/scroll.dart';
import 'package:flutter_web_test/theme/theme.dart';

void main() {
  usePathUrlStrategy();

  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio',
      theme: buildTheme(context),
      scrollBehavior: HorizontalScrollBehavior(),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
