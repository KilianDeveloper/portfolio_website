import 'package:flutter/material.dart';
import 'package:flutter_web_test/model/brandcollection.dart';
import 'package:flutter_web_test/widget/brandicon.dart';

class BrandCollectionCard extends StatelessWidget {
  final BrandCollection collection;
  final double width;
  const BrandCollectionCard({
    super.key,
    required this.collection,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final brands = collection.collection
        .map(
          (brand) => BrandIcon(
            brand: brand,
            size: 80.0,
          ),
        )
        .expand((element) => [element, const SizedBox(width: 80)])
        .toList();
    brands.removeLast();
    return SizedBox(
      width: width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Text(
                collection.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 32),
              Wrap(
                children: brands,
              )
            ],
          ),
        ),
      ),
    );
  }
}
