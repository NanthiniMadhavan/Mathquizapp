import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var score = 0;
  late int num1, num2;
  late String operator;
  late int correctAnswer;
  late int userAnswer;
  int questionCount = 0;
  int maxQuestions = 3;

  @override
  void initState() {
    super.initState();
    generateQuestion();
  }

  void generateQuestion() {
    if (questionCount < maxQuestions) {
      setState(() {
        num1 = Random().nextInt(10) + 1;
        num2 = Random().nextInt(10) + 1;
        operator = ['+', '-', '*', '/'][Random().nextInt(4)];
        switch (operator) {
          case '+':
            correctAnswer = num1 + num2;
            break;
          case '-':
            correctAnswer = num1 - num2;
            break;
          case '*':
            correctAnswer = num1 * num2;
            break;
          case '/':
            correctAnswer = num1 ~/ num2; // integer division
            break;
        }
        questionCount++;
      });
    } else {
      Alert(
        context: context,
        title: "Finish",
        desc: "You scored $score out of $maxQuestions",
        image: Image.asset("assets/images/paps.png"),
      ).show();
      reset();
    }
  }

  TextEditingController answerController = TextEditingController();

  void checkAnswer(BuildContext ctx) {
    int userAnswer = int.tryParse(answerController.text) ?? 0;
    if (userAnswer == correctAnswer) {
      setState(() {
        score = score + 1;
      });

      final snackBar = SnackBar(
        content: Text(
          "Correct answer: $num1 $operator $num2 = $correctAnswer",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        duration: Duration(milliseconds: 500),
        backgroundColor: Color(0xFFCCBA78),
      );

      ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
    } else {
      setState(() {
        // score = score - 1;
      });

      final snackBar = SnackBar(
        content: Text(
          "Wrong answer",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        duration: Duration(milliseconds: 500),
        backgroundColor: Color(0xFFCCBA78),
      );

      ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
    }

    setState(() {
      if (questionCount < maxQuestions - 1) {
        questionCount = questionCount + 1;
      } else {
        Alert(
          context: context,
          title: "Finish",
          desc: "You scored $score out of $maxQuestions",
          image: Image.asset("assets/images/paps.png"),
        ).show();
        reset();
      }
    });
  }

  void reset() {
    setState(() {
      questionCount = 0;
      score = 0;
    });
    generateQuestion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Bronze',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFCCBA78),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'Achievements',
                style: TextStyle(
                  color: Color(0xFFCCBA78),
                  fontFamily: 'Caprasimo',
                  fontSize: 30,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_events,
                color: Color(0xFFCCBA78),
              ),
              title: Text(
                'Level 1',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Caprasimo',
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_events,
                color: Color(0xFFCCBA78),
              ),
              title: Text(
                'Level 2',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Caprasimo',
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_events,
                color: Color(0xFFCCBA78),
              ),
              title: Text(
                'Level 3',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Caprasimo',
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.emoji_events,
                color: Color(0xFFCCBA78),
              ),
              title: Text(
                'Level 4',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Caprasimo',
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        shadowColor: Color(0xFFCCBA78),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/q.png',
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "LEVEL 1",
              style: TextStyle(
                color: Color(0xFFCCBA78),
                fontFamily: 'Caprasimo',
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Builder(
            builder: (ctx) => Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        'SCORE: $score/$maxQuestions',
                        style: TextStyle(
                          color: Color(0xFFCCBA78),
                          fontFamily: 'Caprasimo',
                          fontSize: 20,
                        ),
                      ),
                      InkWell(
                        onTap: () => reset(),
                        child: Text(
                          'RESET',
                          style: TextStyle(
                            color: Color(0xFFCCBA78),
                            fontFamily: 'Caprasimo',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$num1 $operator $num2 =',
                              style: TextStyle(
                                color: Color(0xFFCCBA78),
                                fontFamily: 'Caprasimo',
                                fontSize: 30,
                              ),
                            ),
                            SizedBox(width: 16),
                            SizedBox(
                              width: 40,
                              child: TextField(
                                controller: answerController,
                                style: TextStyle(
                                  color: Color(0xFFCCBA78),
                                  fontFamily: 'Caprasimo',
                                  fontSize: 30,
                                ),
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  fillColor: Color(0xFFCCBA78),
                                  focusColor: Color(0xFFCCBA78),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    userAnswer = int.tryParse(value) ?? 0;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      checkAnswer(ctx);
                      generateQuestion();
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Caprasimo',
                        fontSize: 20,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFCCBA78)),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
