import 'package:flutter/material.dart';

class QuizButton extends StatelessWidget {
  const QuizButton(this.startQuiz, {super.key});

  final Function() startQuiz;

  @override
  Widget build(context) {
    return Column(
      children: [
        FloatingActionButton.extended(
          onPressed: startQuiz,
          backgroundColor: const Color.fromARGB(230, 251, 251, 251),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: const Color.fromARGB(255, 122, 31, 145),
              width: 1,
            ),
          ),
          label: const Text(
            'Start Quiz',
            style: TextStyle(color: Color.fromARGB(255, 103, 44, 163)),
          ),
          icon: const Icon(Icons.arrow_right_alt),
        ),
      ],
    );
  }
}
