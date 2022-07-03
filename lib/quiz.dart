import 'package:flutter/material.dart';
import 'package:flutter_quiz/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List questionList;
  final int questionIndex;
  final Function onAnswered;

  const Quiz({
    required this.questionList,
    required this.questionIndex,
    required this.onAnswered,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Question(questionList[questionIndex]['questionText']),
        ),
        ...(questionList[questionIndex]['answers'] as List).map(
              (answer) {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: AnswerWidget(
                title: answer['text'],
                onAnswered: () => onAnswered(answer['points']),
              ),
            );
          },
        ).toList(),
      ],
    );
  }
}
