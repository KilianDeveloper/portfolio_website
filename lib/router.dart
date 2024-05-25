import 'package:flutter/material.dart';
import 'package:flutter_web_test/about/about.dart';
import 'package:flutter_web_test/home/home.dart';
import 'package:flutter_web_test/privacy/privacy.dart';
import 'package:flutter_web_test/projects/projects.dart';
import 'package:flutter_web_test/terms/terms.dart';
import 'package:flutter_web_test/widget/background.dart';
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
              body: PageBackground(child: child),
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
          pageBuilder: (context, state) {
            final query = state.extra;
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: AboutScreen(scrollDown: query == true),
            );
          },
        ),
        GoRoute(
          path: '/projects',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const ProjectsScreen(),
          ),
        ),
        GoRoute(
          path: '/privacy',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const PrivacyScreen(),
          ),
        ),
        GoRoute(
          path: '/terms',
          parentNavigatorKey: _shellNavigatorKey,
          pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const TermsOfUsageScreen(),
          ),
        ),
      ],
    ),
  ],
);
