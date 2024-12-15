import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/styled_button.dart';
import 'package:quizapp/styled_text.dart';
import 'package:quizapp/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
//methods

  @override
  Widget build(context) {
    final currentQuestion = questions[0];

    return StartScreen(
      colors: const [Colors.purple, Colors.cyan],
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledText(currentQuestion.text),
          const SizedBox(height: 30),
          ...currentQuestion.answer.map( //iterates answers of question[i]
            (answer) {
              return StyledButton(
                buttonAction: () {},
                text: answer,
              );
            },
          )
        ],
      ),
    );
  }
}
