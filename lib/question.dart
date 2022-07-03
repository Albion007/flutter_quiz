import 'package:flutter/material.dart';
import 'package:flutter_quiz/main.dart';

class Question extends StatelessWidget {
  final String title;

  const Question(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 26),
    );
  }
}
