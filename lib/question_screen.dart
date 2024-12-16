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
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return StartScreen(
      colors: const [Colors.purple, Colors.cyan],
      content: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentQuestion.text),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map(
              //iterates answers of question[i]
              (answer) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  child: StyledButton(
                    buttonAction: answerQuestion,
                    text: answer,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
