import 'package:flutter/material.dart';
import 'package:quizapp/styled_text.dart';

class ButtonWithImage extends StatelessWidget {
  const ButtonWithImage({super.key});

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png',
            width: 300, color: const Color.fromARGB(150, 255, 255, 255)),
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
    );
  }
}
