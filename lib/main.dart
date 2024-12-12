import 'package:flutter/material.dart';

import 'package:quizapp/gradient_container.dart';

void main() {
  runApp(const MaterialApp(
    home: GradientContainer(
      colors: [Colors.purple, Colors.white],
    ),
  ));
}
