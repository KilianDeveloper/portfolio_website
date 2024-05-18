import 'package:flutter/material.dart';

class ImageRow extends StatelessWidget {
  final List<String> images;
  const ImageRow({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(images[index]),
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}
