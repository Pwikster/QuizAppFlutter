import 'package:flutter/material.dart';
import 'package:quizapp/start_screen.dart';
import 'package:quizapp/button_with_image.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
//methods

  @override
  Widget build(context) {
    return const MaterialApp(
      home: Scaffold(
        body: StartScreen(
          colors: [Colors.purple, Colors.cyan],
          content: ButtonWithImage(),
        ),
      ),
    );
  }
}
