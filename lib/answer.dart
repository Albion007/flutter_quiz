import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final Function onAnswered;

  const AnswerWidget({
    required this.title,
    required this.onAnswered,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        onPressed: () {
          onAnswered();
        },
        child: Text(title),
      ),
    );
  }
}
