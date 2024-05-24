import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme/theme.dart';
import 'package:go_router/go_router.dart';

class SmallPortfolioAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  final StatefulNavigationShell? shell;
  final Widget child;
  const SmallPortfolioAppBar({
    super.key,
    this.shell,
    required this.child,
  });

  @override
  State<SmallPortfolioAppBar> createState() => _SmallPortfolioAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}

class _SmallPortfolioAppBarState extends State<SmallPortfolioAppBar> {
  final GlobalKey<DrawerControllerState> _drawerKey =
      GlobalKey<DrawerControllerState>();
  final DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start;

  void _openDrawer() {
    _drawerKey.currentState?.open();
  }

  @override
  Widget build(BuildContext context) {
    final leftPadding = loadPaddingLeft(context);
    final selectedTextStyle = Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        );
    final selectedRoute = GoRouterState.of(context).uri.toString();
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: leftPadding)
                  .copyWith(top: 40),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Kilian M.",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    IconButton(
                        onPressed: _openDrawer,
                        icon: const Icon(
                          Icons.menu_rounded,
                        ))
                  ],
                ),
              ),
            ),
            widget.child,
          ],
        ),
        DrawerController(
          key: _drawerKey,
          alignment: DrawerAlignment.end,

          drawerCallback: (_) {},
          dragStartBehavior: drawerDragStartBehavior,
          //widget.drawerDragStartBehavior,
          child: Drawer(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Navigation',
                        style: Theme.of(context).textTheme.titleMedium),
                    TextButton(
                      onPressed: () => context.go("/"),
                      child: Text(
                        "Home",
                        style: selectedRoute == "/" ? selectedTextStyle : null,
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.go("/about"),
                      child: Text(
                        "About",
                        style: selectedRoute == "/about"
                            ? selectedTextStyle
                            : null,
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.go("/projects"),
                      child: Text(
                        "Projects",
                        style: selectedRoute == "/projects"
                            ? selectedTextStyle
                            : null,
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.go("/privacy"),
                      child: Text(
                        "Privacy",
                        style: selectedRoute == "/privacy"
                            ? selectedTextStyle
                            : null,
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.go("/terms"),
                      child: Text(
                        "Terms of use",
                        style: selectedRoute == "/terms"
                            ? selectedTextStyle
                            : null,
                      ),
                    ),
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
