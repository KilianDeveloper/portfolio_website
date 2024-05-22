import 'package:flutter/material.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/widget/brandicon.dart';

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
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Tech Stacks:",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BrandIcon(
                  brand: Brand.flutter,
                  showName: false,
                  size: 48,
                ),
                BrandIcon(
                  brand: Brand.spring,
                  showName: false,
                  size: 48,
                ),
                BrandIcon(
                  brand: Brand.docker,
                  showName: false,
                  size: 48,
                ),
                BrandIcon(
                  brand: Brand.figma,
                  showName: false,
                  size: 48,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
