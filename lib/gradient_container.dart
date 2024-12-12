import 'package:flutter/material.dart';

import 'package:quizapp/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

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
              width: 275,
            ),
            const SizedBox(
              height: 25,
            ),
            const StyledText('Learn Flutter the fun way!'),
            const SizedBox(
              height: 25,
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Start Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
