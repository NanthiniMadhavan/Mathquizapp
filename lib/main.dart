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
    //Initialize the Math application
    return MaterialApp(
      debugShowCheckedModeBanner: false, //disable the debug banner
      title: 'Math Quiz App', //set the title of the application
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black), //set the theme of the app
      initialRoute: '/', //set the initial route
      routes: {
        '/': (context) =>
            WelcomeScreen(), //define the route for the welcome Screen
        '/select': (context) =>
            Selectscreen(), //define the route for the Select Screen
        '/quiz': (context) =>
            QuizScreen(), //define the route for the Quiz Screen
        '/level': (context) =>
            Levelscreen(), //define the route for the leve; Screen
      },
    );
  }
}
