import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/styled_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(context) {
    return StartScreen(
      colors: const [Colors.purple, Colors.cyan],
      content: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const StyledText('DUMMY TEXT, YA DUMMY'),
            const SizedBox(
              height: 30,
            ),
            const StyledText('Placeholder for list of correct/incorrect answers'),
            TextButton(
              onPressed: () {},
              child: const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}
