import 'package:adv_basics/questions_screen.dart';

import 'package:adv_basics/start_screen.dart';

import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(restartQuiz);
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = StartScreen(switchScreen);
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white, height: 5, fontSize: 20),
          // другие стили: bodyMedium, titleLarge, displaySmall и т.д.
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 103, 44, 163),
          title: Text('Flutter Quiz'),
          centerTitle: true,
        ),
        body: Container(child: activeScreen),
      ),
    );
  }
}
