import 'package:flutter/material.dart';

class SlideInWidget extends StatefulWidget {
  final Widget child;
  const SlideInWidget({
    super.key,
    required this.child,
  });

  @override
  State<SlideInWidget> createState() => _SlideInWidgetState();
}

class _SlideInWidgetState extends State<SlideInWidget>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  int slide = 40;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    animation = CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn);

    startAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void startAnimation() {
    setState(() {
      animationController.value = 0;
      animationController.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildAnimation(
      context: context,
      child: widget.child,
    );
  }

  Widget _buildAnimation({
    required BuildContext context,
    required Widget child,
  }) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform(
          transform:
              Matrix4.translationValues(0, (1.0 - animation.value) * slide, 0),
          child: child,
        );
      },
      child: child,
    );
  }
}
