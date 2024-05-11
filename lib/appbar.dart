import 'package:flutter/material.dart';
import 'package:flutter_web_test/main.dart';
import 'package:go_router/go_router.dart';

class PortfolioAppBar extends StatefulWidget implements PreferredSizeWidget {
  final StatefulNavigationShell? shell;
  const PortfolioAppBar({super.key, this.shell});

  @override
  State<PortfolioAppBar> createState() => _PortfolioAppBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 100);
}

class _PortfolioAppBarState extends State<PortfolioAppBar> {
  @override
  Widget build(BuildContext context) {
    final selectedTextStyle = Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
        );
    final selectedRoute = GoRouterState.of(context).uri.toString();
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: paddingLeft).copyWith(top: 40),
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
                style: selectedRoute == "/projects" ? selectedTextStyle : null,
              ),
            ),
            FilledButton(
              onPressed: () {},
              style: Theme.of(context).filledButtonTheme.style?.copyWith(
                    backgroundColor: MaterialStatePropertyAll(
                        Theme.of(context).colorScheme.primary),
                  ),
              child: const Text("Contact"),
            )
          ],
        ),
      ),
    );
  }
}
