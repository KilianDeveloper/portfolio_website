import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final int startPosition;
  final Duration duration;
  final String start;
  final int delayMilliseconds;
  final Function()? onEnd;
  const AnimatedText(
    this.text, {
    super.key,
    this.style,
    this.startPosition = 0,
    this.start = "",
    required this.duration,
    this.delayMilliseconds = 0,
    this.onEnd,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: Duration(milliseconds: delayMilliseconds),
      builder: (context, animatedValue, child) {
        if (animatedValue == 1) {
          return TweenAnimationBuilder<double>(
              duration: duration,
              tween: Tween<double>(
                begin: startPosition.toDouble(),
                end: text.length.toDouble(),
              ),
              onEnd: onEnd,
              builder: (_, size, __) {
                final end = size.toInt() == text.length ? "" : "_";
                return Text(
                  "$start${text.substring(0, size.toInt())}$end",
                  style: style,
                );
              });
        }
        return Text(
          " ",
          style: style,
        );
      },
    );
  }
}
