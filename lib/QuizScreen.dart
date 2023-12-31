import 'package:flutter/material.dart';
import 'package:mathquizapp/Questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var score = 0;
  var n = 0;
  late int number1, number2;
  late String operator;

  // operator - random number 0 to 3 0 - add, 1 - sub, 3 - multiply, 4 - divide
  // number1, number2 --> number2 depends on sub and divide and whether it should be greater than number1 or not
  // number1 - random less than 10, 50, 100
  // number2 - condition based random number generate

  List<Question> queList = [
    Question("5 + 9 = ", 14),
    Question("10 * 8 = ", 80),
    Question("10 - 5 = ", 5),
    Question("100 / 2 = ", 50),
    // 4 questions created from random numbers above
  ];

  TextEditingController answerController = TextEditingController();

  void CheckAnswer(BuildContext ctx) {
    int userAnswer = int.tryParse(answerController.text) ?? 0;
    if (userAnswer == queList[n].answer) {
      // // debugPrint('Correct');
      // setState(() {
      score = score + 1;

      final snackBar = SnackBar(
        content: Text(
          "Correct answer",
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
      // });
    } else {
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
      if (n < queList.length - 1) {
        n = n + 1;
      } else {
        Alert(
          // style: AlertStyle(backgroundColor: Colors.black),
          context: context,
          title: "Finish",
          desc: "You scored $score out of ${queList.length}",
          image: Image.asset("assets/images/paps.png"),
        ).show();
        final snackBar = SnackBar(
          content: Text(
            "Level 1 completed score $score/4",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Caprasimo',
              fontSize: 20,
            ),
          ),
          duration: Duration(seconds: 5),
          backgroundColor: Color(0xFFCCBA78),
        );

        ScaffoldMessenger.of(ctx).showSnackBar(snackBar);
        reset();
      }
    });
  }

  void reset() {
    setState(() {
      n = 0;
      score = 0;
    });
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
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'Achivements',
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
                'level 2',
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
                'level 3',
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
                'level 4',
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
          ), // level1(),
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
                        'SCORE: $score/4',
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
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: Color(0xFFCCBA78),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          queList[n].question,
                          style: TextStyle(
                            color: Color(0xFFCCBA78),
                            fontFamily: 'Caprasimo',
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(width: 20),
                        TextField(
                          controller: answerController,
                          keyboardType: TextInputType.number,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Caprasimo',
                            fontSize: 20,
                          ),
                          decoration: InputDecoration(
                            suffixIcon: answerController.text.length > 0
                                ? IconButton(
                                onPressed: () {
                                  answerController.clear();
                                  setState(() {});
                                },
                                icon:
                                Icon(Icons.cancel, color: Color(0xFFCCBA78)))
                                : null,
                            hintText: '__',
                            hintStyle: TextStyle(
                              color: Color(0xFFCCBA78),
                              fontFamily: 'Caprasimo',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  ElevatedButton(
                    onPressed: () => CheckAnswer(context),
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
    ],),
    );
  }
}
