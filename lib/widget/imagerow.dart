import 'package:flutter/material.dart';

class ImageRow extends StatefulWidget {
  final List<String> images;
  final double height;
  final double space;
  final double cornerRadius;
  const ImageRow({
    super.key,
    required this.images,
    this.height = 600,
    this.space = 16,
    this.cornerRadius = 20,
  });

  @override
  State<ImageRow> createState() => _ImageRowState();
}

class _ImageRowState extends State<ImageRow> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: RawScrollbar(
        scrollbarOrientation: ScrollbarOrientation.bottom,
        controller: _controller,
        thumbColor: Theme.of(context).colorScheme.secondary,
        trackColor: Theme.of(context).colorScheme.surfaceContainerHighest,
        trackVisibility: true,
        trackRadius: Radius.circular(widget.cornerRadius),
        radius: Radius.circular(widget.cornerRadius),
        thickness: 8,
        thumbVisibility: true,
        child: Padding(
          padding: EdgeInsets.only(bottom: widget.height / 20),
          child: ListView.separated(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: widget.images.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(widget.cornerRadius),
              child: Image.asset(widget.images[index]),
            ),
            separatorBuilder: (context, index) => SizedBox(width: widget.space),
          ),
        ),
      ),
    );
  }
}
