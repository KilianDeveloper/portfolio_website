import 'package:flutter/material.dart';
import 'package:flutter_web_test/logic/websitenavigator.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/widget/brandicon.dart';

class ClickableBrandCard extends StatelessWidget {
  final Brand brand;
  final double iconSize;
  final EdgeInsets? padding;
  final double width;
  const ClickableBrandCard({
    super.key,
    required this.brand,
    this.iconSize = 80,
    this.padding,
    this.width = 240,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTapUp: (_) {
          WebsiteNavigator.getWebsiteNavigatorFactory()
              .navigateWebsite(brand.url!);
        },
        child: Card(
          child: Padding(
            padding: padding ?? const EdgeInsets.all(40),
            child: BrandIcon(
              brand: brand,
              size: iconSize,
              textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
