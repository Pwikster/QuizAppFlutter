import 'package:flutter/material.dart';
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
  final List<String> selectedAnswers = [];

  Widget? activeScreen;
//methods
  void changeScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
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
