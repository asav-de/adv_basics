import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';
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
  final currentQuestion = questions[1];

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
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.answers.map((answer) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: AnswerButton(answerText: answer, onTap: () {}),
            );
          }),
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
