import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:flutter_web_test/router.dart';
import 'package:flutter_web_test/theme.dart';

void main() {
  usePathUrlStrategy();

  runApp(const PortfolioApp());
}

const paddingLeft = 100.0;

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio',
      theme: appTheme,
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}
