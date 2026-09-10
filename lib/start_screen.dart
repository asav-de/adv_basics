import 'package:adv_basics/images_content.dart';
import 'package:adv_basics/quiz_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
          MyBackgroundImage(),
          Text("Learn Flutter the fun way!"),
          QuizButton(startQuiz),
        ],
      ),
    );
  }
}
