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
      child: Card(
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
                onPressed: () {},
                style: Theme.of(context).filledButtonTheme.style?.copyWith(
                      backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).colorScheme.primary),
                    ),
                child: const Text("View all"),
              )
            ],
          ),
        ),
      ),
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
