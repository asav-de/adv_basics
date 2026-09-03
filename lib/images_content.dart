import 'package:flutter/material.dart';

class MyBackgroundImage extends StatelessWidget {
  const MyBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            width: 300,
            height: 300,
            "assets/images/quiz-logo.png",
            color: const Color.fromARGB(200, 254, 254, 254),
          ),
        ],
      ),
    );
  }
}
