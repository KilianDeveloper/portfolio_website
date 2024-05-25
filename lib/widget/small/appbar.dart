import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_test/theme/small.dart';
import 'package:flutter_web_test/theme/theme.dart';
import 'package:flutter_web_test/widget/small/drawer_background.dart';
import 'package:go_router/go_router.dart';

class SmallPortfolioAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  final StatefulNavigationShell? shell;
  final bool fillSpace;
  final Widget child;
  final ScrollController? controller;
  const SmallPortfolioAppBar({
    super.key,
    this.shell,
    required this.child,
    this.fillSpace = false,
    this.controller,
  });

  @override
  State<SmallPortfolioAppBar> createState() => _SmallPortfolioAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}

class _SmallPortfolioAppBarState extends State<SmallPortfolioAppBar> {
  final GlobalKey<DrawerControllerState> _drawerKey =
      GlobalKey<DrawerControllerState>(debugLabel: "teeeeeeeeeeeeee");
  final DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start;

  void _openDrawer() {
    _drawerKey.currentState?.open();
  }

  void _closeDrawer() {
    _drawerKey.currentState?.close();
  }

  @override
  void dispose() {
    _drawerKey.currentState?.dispose();
    super.dispose();
  }

  Widget _buildDrawerBackground(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: DrawerBackgroundPainter(),
      ),
    );
  }

  Widget _buildMainContent() {
    if (widget.fillSpace) {
      return Expanded(
        child: Padding(
          padding: buildSmallPadding(),
          child: SelectionArea(
            child: widget.child,
          ),
        ),
      );
    } else {
      return Padding(
        padding: buildSmallPadding(),
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
    return Stack(
      children: [
        buildAppBarWithContent(leftPadding, context),
        DrawerController(
          key: _drawerKey,
          alignment: DrawerAlignment.end,
          drawerCallback: (_) {},
          dragStartBehavior: drawerDragStartBehavior,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Drawer(
              child: SafeArea(
                child: Stack(
                  children: [
                    _buildDrawerBackground(context),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24, 48, 16, 32),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Navigate',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium),
                                  IconButton(
                                      onPressed: _closeDrawer,
                                      icon: const Icon(
                                          Icons.keyboard_arrow_right_rounded))
                                ],
                              ),
                              const SizedBox(height: 24),
                              TextButton(
                                onPressed: () => context.go("/"),
                                child: Text(
                                  "Home",
                                  style: selectedRoute == "/"
                                      ? selectedTextStyle
                                      : null,
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
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: FilledButton(
                              onPressed: () {},
                              child: const Text("Contact"),
                            ),
                          )
                        ],
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

  Widget buildAppBarWithContent(double leftPadding, BuildContext context) {
    final content = Column(
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
                IconButton(
                    onPressed: _openDrawer,
                    icon: const Icon(
                      Icons.menu_rounded,
                    ))
              ],
            ),
          ),
        ),
        _buildMainContent(),
      ],
    );
    if (widget.controller == null) {
      return content;
    }
    return SingleChildScrollView(
      controller: widget.controller,
      child: content,
    );
  }
}
