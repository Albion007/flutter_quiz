import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalPoints;
  final Function onReset;

  const Result({
    required this.totalPoints,
    required this.onReset,
  });

  @override
  Widget build(BuildContext context) {
    String message = '';

    if (totalPoints > 20) {
      message = 'You are awesome!';
    } else if (totalPoints > 15) {
      message = 'You are okay!';
    } else {
      message = 'You are a bad person!';
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You did it - you got: $totalPoints points \n $message',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () => onReset(),
          child: const Text('Reset quiz!'),
        )
      ],
    );
  }
}
