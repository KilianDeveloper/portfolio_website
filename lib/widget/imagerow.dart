import 'package:flutter/material.dart';

class ImageRow extends StatefulWidget {
  final List<String> images;
  const ImageRow({
    super.key,
    required this.images,
  });

  @override
  State<ImageRow> createState() => _ImageRowState();
}

class _ImageRowState extends State<ImageRow> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: RawScrollbar(
        scrollbarOrientation: ScrollbarOrientation.bottom,
        controller: _controller,
        thumbColor: Theme.of(context).colorScheme.secondary,
        trackColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        trackVisibility: true,
        trackRadius: const Radius.circular(20),
        radius: const Radius.circular(20),
        thickness: 8,
        thumbVisibility: true,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: ListView.separated(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: widget.images.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(widget.images[index]),
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 16),
          ),
        ),
      ),
    );
  }
}
