import 'package:flutter/material.dart';
import 'package:quizapp/data/questions.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/button_with_image.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  void saveAnswers(String answer) {
    setState(() {
      selectedAnswers.add(answer);

      if (selectedAnswers.length == questions.length) {
        activeScreen = StartScreen(
      colors: const [Colors.purple, Colors.cyan],
      content: ButtonWithImage(changeScreen),
        );
        selectedAnswers = [];
      }
    });
  }

  Widget? activeScreen;

  void changeScreen() {
    setState(() {
      activeScreen = QuestionScreen(
        onSelectAnswer: saveAnswers,
      );
    });
  }

  @override
  void initState() {
    activeScreen = StartScreen(
      colors: const [Colors.purple, Colors.cyan],
      content: ButtonWithImage(changeScreen),
    );
    super.initState();
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen,
      ),
    );
  }
}
