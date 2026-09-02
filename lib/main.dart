import 'quitz_button.dart';

import 'package:flutter/material.dart';

import 'images_content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 133, 58, 183),
        ),
      ),
      home: const MyQuitz(title: 'My Dart Quitz'),
    );
  }
}

class MyQuitz extends StatelessWidget {
  const MyQuitz({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 103, 44, 163),
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        color: const Color.fromARGB(255, 123, 58, 183),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyBackgroundImage(),
              Text(
                "Learn Flutter the fun way!",
                style: TextStyle(color: Colors.white, height: 5, fontSize: 20),
              ),
              QuitzButton(),
            ],
          ),
        ),
      ),
    );
  }
}
