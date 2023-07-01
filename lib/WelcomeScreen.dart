import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Math Quiz App',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFFCCBA78),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.school,
              size: 100,
              color: Color(0xFFCCBA78),
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to Math Quiz App',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caprasimo',
                  color: Color(0xFFCCBA78)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Navigate to the quiz screen
                Navigator.pushNamed(context, '/select');
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
          ],
        ),
      ),
    );
  }
}
