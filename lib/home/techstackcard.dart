import 'package:flutter/material.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/widget/brandicon.dart';
import 'package:go_router/go_router.dart';

class TechStackCard extends StatefulWidget {
  const TechStackCard({
    super.key,
  });

  @override
  State<TechStackCard> createState() => _TechStackCardState();
}

class _TechStackCardState extends State<TechStackCard>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Tech Stacks:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const BrandIcon(
              brand: Brand.flutter,
              showName: false,
              size: 48,
            ),
            const BrandIcon(
              brand: Brand.spring,
              showName: false,
              size: 48,
            ),
            const BrandIcon(
              brand: Brand.docker,
              showName: false,
              size: 48,
            ),
            const BrandIcon(
              brand: Brand.figma,
              showName: false,
              size: 48,
            ),
            const BrandIcon(
              brand: Brand.firebase,
              showName: false,
              size: 48,
            ),
            FilledButton(
              onPressed: () => context.go("/about"),
              style: Theme.of(context).filledButtonTheme.style?.copyWith(
                    backgroundColor: WidgetStatePropertyAll(
                        Theme.of(context).colorScheme.primary),
                  ),
              child: const Text("View all"),
            )
          ],
        ),
      ),
    );
  }
}
