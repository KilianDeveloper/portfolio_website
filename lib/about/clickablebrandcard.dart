import 'package:flutter/material.dart';
import 'package:flutter_web_test/logic/website_navigator.dart';
import 'package:flutter_web_test/model/brand.dart';
import 'package:flutter_web_test/widget/brandicon.dart';

class ClickableBrandCard extends StatelessWidget {
  final Brand brand;
  const ClickableBrandCard({
    super.key,
    required this.brand,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: GestureDetector(
        onTapUp: (_) {
          WebsiteNavigator.getWebsiteNavigatorFactory()
              .navigateWebsite(brand.url!);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: BrandIcon(
              brand: brand,
              size: 80.0,
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
