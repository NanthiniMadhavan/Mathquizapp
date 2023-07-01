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
  List que_list = [
    Questions(" 5 + 9 = 13", false),
    Questions(" 10 * 8 = 80", true),
    Questions(" 10 - 5 = 20", false),
    Questions(" 100 / 2 = 50", true),
  ];
  void CheckAnswer(bool choice, BuildContext ctx) {
    if (choice == que_list[n].ans) {
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
      if (n < que_list.length - 1) {
        n = n + 1;
      } else {
        Alert(
          context: context,
          title: "Finish",
          desc: "You scored $score out of ${que_list.length}",
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
            child: Image.network(
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
                        onTap: () => reset(), //30:12
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
                          que_list[n].que,
                          style: TextStyle(
                            color: Color(0xFFCCBA78),
                            fontFamily: 'Caprasimo',
                            fontSize: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green, // Set green color for "true"
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ElevatedButton(
                          onPressed: () => CheckAnswer(true, ctx),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFCCBA78),
                            padding: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            // Set transparent color
                          ),
                          child: Text(
                            "true",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Caprasimo',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red, // Set red color for "false"
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: ElevatedButton(
                          onPressed: () => CheckAnswer(false, ctx),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFCCBA78),
                            padding: EdgeInsets.all(16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            // Set transparent color
                          ),
                          child: Text(
                            "false",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Caprasimo',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Column(
          //   children: <Widget>[
          //     Container(
          //       color: Colors.yellow,
          //       child: const TextField(
          //         decoration: InputDecoration(),
          //         keyboardType: TextInputType.number,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
