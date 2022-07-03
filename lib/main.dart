import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalPoints = 0;

  final List _questions = [
    {
      'questionText': 'What is your favorite animal?',
      'answers': [
        {
          'text': 'Dog',
          'points': 10,
        },
        {
          'text': 'Mouse',
          'points': 1,
        },
        {
          'text': 'Horse',
          'points': 5,
        },
      ],
    },
    {
      'questionText': 'What is your favorite color?',
      'answers': [
        {
          'text': 'Green',
          'points': 10,
        },
        {
          'text': 'Red',
          'points': 1,
        },
        {
          'text': 'Blue',
          'points': 5,
        },
      ],
    },
    {
      'questionText': 'What is your favorite food?',
      'answers': [
        {
          'text': 'Pizza',
          'points': 10,
        },
        {
          'text': 'Burger',
          'points': 5,
        },
        {
          'text': 'Pasta',
          'points': 1,
        },
      ],
    },
  ];

  void onAnswered(int points) {
    _totalPoints += points;

    setState(() {
      _questionIndex++;
    });
  }

  void reset() {
    setState(() {
      _questionIndex = 0;
      _totalPoints = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: _questionIndex < _questions.length
              ? Quiz(
            onAnswered: onAnswered,
            questionList: _questions,
            questionIndex: _questionIndex,
          )
              : Result(
            onReset: reset,
            totalPoints: _totalPoints,
          ),
        ),
      ),
    );
  }
}
