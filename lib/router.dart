import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/about.dart';
import 'package:flutter_web_test/appbar.dart';
import 'package:flutter_web_test/background.dart';
import 'package:flutter_web_test/home/home.dart';
import 'package:flutter_web_test/main.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return Stack(
          children: [
            Scaffold(
              extendBodyBehindAppBar: true,
              appBar: const PortfolioAppBar(),
              body: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: CustomPaint(
                      painter: PageBackgroundPainter(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 160,
                      right: paddingLeft,
                      left: paddingLeft,
                      bottom: 60,
                    ),
                    child: child,
                  ),
                ],
              ),
            ),
          ],
        );
      },
      routes: [
        GoRoute(
          path: '/',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const HomeScreen(),
          ),
        ),
        GoRoute(
          path: '/about',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const AboutScreen(),
          ),
        ),
        GoRoute(
          path: '/projects',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: Text("sadadadggfdddf"),
          ),
        ),
      ],
    ),
  ],
);
