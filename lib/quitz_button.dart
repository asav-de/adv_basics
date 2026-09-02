import 'package:flutter/material.dart';

class QuitzButton extends StatelessWidget {
  const QuitzButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton.extended(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: const Color.fromARGB(255, 122, 31, 145),
              width: 1,
            ),
          ),
          label: const Text('Start Quitz'),
          icon: const Icon(Icons.play_arrow),
        ),
      ],
    );
  }
}
