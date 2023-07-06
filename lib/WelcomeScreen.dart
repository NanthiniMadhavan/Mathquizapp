import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Scaffold widget provides the basic app layout structure
    return Scaffold(
      appBar: AppBar(
        //AppBar at the top of the screen
        title: Text(
          'Math Quiz App', //Title text of the app
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFFCCBA78), //background color of the app bar
        centerTitle: true, //center the title within the app bar
      ),
      body: Container(
        //Container for the main content of the screen
        padding: EdgeInsets.all(16.0), //padding around the content
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //center the content vertically
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // stretch the content horizontally
          children: [
            Icon(
              Icons.school,
              size: 100,
              color: Color(0xFFCCBA78), //color of the icon
            ),
            SizedBox(height: 16.0), //Empty space between the icon and the text
            Text(
              'Welcome to Math Quiz App', //text widget to display a welcome message
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Caprasimo',
                  color: Color(0xFFCCBA78)), //style of the welcome message
              textAlign: TextAlign.center, //center the text
            ),
            SizedBox(
                height: 32.0), // Empty space between the text and the button
            ElevatedButton(
              onPressed: () {
                // Navigate to the quiz screen
                Navigator.pushNamed(
                    context, '/select'); // Navigate to the select screen
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xFFCCBA78)), // Background color of the button
              ),
              child: Text(
                'Start Quiz', // Text displayed on the button
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
