import 'package:flutter/material.dart';
import 'package:mathquizapp/Levelscreen.dart';
import 'package:mathquizapp/QuizScreen.dart';
import 'package:mathquizapp/Selectscreen.dart';
import 'package:mathquizapp/WelcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Math Quiz App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/select': (context) => Selectscreen(),
        '/quiz': (context) => QuizScreen(),
        '/level': (context) => Levelscreen(),
      },
    );
  }
}
