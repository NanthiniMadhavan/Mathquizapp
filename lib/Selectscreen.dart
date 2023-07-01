import 'package:flutter/material.dart';

class Selectscreen extends StatefulWidget {
  const Selectscreen({Key? key}) : super(key: key);

  @override
  State<Selectscreen> createState() => _SelectscreenState();
}

class _SelectscreenState extends State<Selectscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instructions',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFFCCBA78),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.network('assets/images/stick.png'),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome to the Math Quiz App!',
            style: TextStyle(
                fontSize: 18,
                color: Color(0xFFCCBA78),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Follow the instructions below to get started:',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFCCBA78),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '1. Launch the Math Quiz App on your device.\n'
                  '2. Select the desired math category and difficulty level.\n'
                  '3. Answer the math problems presented one at a time.\n'
                  '4. Receive immediate feedback on your responses.\n'
                  '5. Track your progress and view your score.\n'
                  '6. Explore different categories and difficulty levels.\n'
                  '7. Replay quizzes to improve your skills.\n'
                  '8. Seek help or support if needed.',
                  style: TextStyle(fontSize: 14, color: Color(0xFFCCBA78)),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the quiz screen
              Navigator.pushNamed(context, '/level');
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFFCCBA78)),
            ),
            child: Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Caprasimo',
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }
}
