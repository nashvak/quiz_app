import 'package:flutter/material.dart';
import 'package:quiz_app/utilities/quiz_app/quiz_screen.dart';

import 'package:quiz_app/utilities/quiz_app/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var activeScreen = 'start-screen';

  void changeScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.purple,
              Color.fromARGB(255, 61, 6, 157),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: (activeScreen == 'start-screen')
              ? StartScreen(changeScreen)
              : QuestionScreen(),
        ),
      ),
    );
  }
}
