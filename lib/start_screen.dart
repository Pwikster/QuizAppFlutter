import 'package:flutter/material.dart';

import 'package:quizapp/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.colors});

  final List<Color> colors;

  @override //used to ensure that we are not using any methods incorrectly.
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255)
            ),
            const SizedBox(
              height: 80,
            ),
            const StyledText('Learn Flutter the fun way!'),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_circle_right_outlined),
              label: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
