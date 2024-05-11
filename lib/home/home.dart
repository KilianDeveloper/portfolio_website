import 'package:flutter/material.dart';
import 'package:flutter_web_test/home/techstackcard.dart';
import 'package:flutter_web_test/widget/animation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SelectionArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedText(
                  "Hi, I’m Kilian Markgraf",
                  start: ">> ",
                  style: Theme.of(context).textTheme.titleLarge,
                  duration: const Duration(milliseconds: 3000),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    AnimatedText(
                      "",
                      start: ">> ",
                      style: Theme.of(context).textTheme.bodyLarge,
                      duration: const Duration(milliseconds: 1),
                      delayMilliseconds: 3000,
                    ),
                    AnimatedText(
                      "I’m a passionate Software Developer based in Germany",
                      style: Theme.of(context).textTheme.bodyLarge,
                      duration: const Duration(milliseconds: 4000),
                      delayMilliseconds: 3500,
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                FilledButton(
                  onPressed: () => Navigator.of(context).pushNamed('/about'),
                  child: const Text("Learn More"),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: TechStackCard(),
            )
          ],
        ),
      ),
    );
  }
}
