import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/styled_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.selectedResults,
  });

  final List<String> selectedResults;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedResults.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedResults[i],
      });
    }
    return summary;
  }

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
            const StyledText(
                'Placeholder for list of correct/incorrect answers'),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
