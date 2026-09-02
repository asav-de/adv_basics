import 'package:flutter/material.dart';

class MyBackgroundImage extends StatelessWidget {
  const MyBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        width: 300,
        height: 300,
        "images/quiz-logo.png",
        fit: BoxFit.contain,
      ),
    );
  }
}
