import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme/large.dart';
import 'package:flutter_web_test/theme/theme.dart';
import 'package:go_router/go_router.dart';

class LargePortfolioAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  final StatefulNavigationShell? shell;
  final Widget child;
  final bool fillSpace;
  const LargePortfolioAppBar({
    super.key,
    this.shell,
    required this.child,
    this.fillSpace = false,
  });

  @override
  State<LargePortfolioAppBar> createState() => _LargePortfolioAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}

class _LargePortfolioAppBarState extends State<LargePortfolioAppBar> {
  void onMoreSelected(BuildContext context, String value) {
    switch (value) {
      case "privacy":
        context.go("/privacy");
        break;
      case "terms":
        context.go("/terms");
        break;
      case "contact":
        context.go("/about", extra: true);
    }
  }

  bool isRouterMore(String route) {
    switch (route) {
      case "/privacy":
      case "/terms":
        return true;
    }
    return false;
  }

  Widget _buildMainContent() {
    if (widget.fillSpace) {
      return Expanded(
        child: Padding(
          padding: buildLargePadding(),
          child: SelectionArea(
            child: widget.child,
          ),
        ),
      );
    } else {
      return Padding(
        padding: buildLargePadding(),
        child: SelectionArea(
          child: widget.child,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final leftPadding = loadPaddingLeft(context);
    final selectedTextStyle = Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        );
    final selectedRoute = GoRouterState.of(context).uri.toString();
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: leftPadding).copyWith(top: 40),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Kilian M.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
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
                    style: selectedRoute == "/about" ? selectedTextStyle : null,
                  ),
                ),
                TextButton(
                  onPressed: () => context.go("/projects"),
                  child: Text(
                    "Projects",
                    style:
                        selectedRoute == "/projects" ? selectedTextStyle : null,
                  ),
                ),
                PopupMenuButton(
                  tooltip: "Show more navigation options",
                  onSelected: (value) => onMoreSelected(context, value),
                  itemBuilder: (BuildContext context) =>
                      <PopupMenuEntry<String>>[
                    const PopupMenuItem(
                      value: "privacy",
                      child: ListTile(
                        title: Text('Privacy'),
                      ),
                    ),
                    const PopupMenuItem(
                      value: "terms",
                      child: ListTile(
                        title: Text('Terms of use'),
                      ),
                    ),
                    const PopupMenuItem(
                      value: "contact",
                      child: ListTile(
                        title: Text('Contact me'),
                      ),
                    ),
                  ],
                  child: Text(
                    "More",
                    style:
                        isRouterMore(selectedRoute) ? selectedTextStyle : null,
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildMainContent(),
      ],
    );
  }
}
