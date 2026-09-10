import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.restartQuiz, {super.key});

  final void Function() restartQuiz;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  Widget? questionsScreen;

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 88, 15, 156),
            Color.fromARGB(255, 123, 58, 183),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Learn Flutter the fun way!"),
          const SizedBox(height: 30),
          AnswerButton(answerText: 'Answer 1', onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: 'Answer 2', onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: 'Answer 3', onTap: () {}),
          const SizedBox(height: 10),
          AnswerButton(answerText: 'Answer 4', onTap: () {}),
          const SizedBox(height: 10),
          const SizedBox(height: 30),
          FloatingActionButton(
            onPressed: widget.restartQuiz,
            tooltip: 'Back to start',
            child: const Icon(Icons.chevron_left),
          ),
        ],
      ),
    );
  }
}
