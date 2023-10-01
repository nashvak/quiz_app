import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'images/quiz-logo.png',
          width: 300,
          color:
              Color.fromARGB(255, 160, 156, 156), //slightly transparent image
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn flutter in fun ways..',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Start Quiz'))
      ],
    ));
  }
}
