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
      // Scaffold widget provides the basic app layout structure
      appBar: AppBar(
        // AppBar at the top of the screen
        title: Text(
          // Title text of the app bar
          'Instructions',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Caprasimo',
            fontSize: 20,
          ),
        ),
        backgroundColor: Color(0xFFCCBA78), // Background color of the app bar
        centerTitle: true, // Center the title within the app bar
      ),
      body: Column(
        children: [
          Align(
            // Align widget to center the image
            alignment: Alignment.center,
            child: Image.network(
                'assets/images/stick.png'), // Display an image from the network
          ),
          SizedBox(height: 20),
          Text(
            'Welcome to the Math Quiz App!',
            style: TextStyle(
                fontSize: 18,
                color: Color(0xFFCCBA78),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10), // Empty space between the image and the text
          Text(
            'Follow the instructions below to get started:', // Text widget to display instructions
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFCCBA78),
            ), // Style of the instructions
          ),
          SizedBox(
              height:
                  10), // Empty space between the instructions and the text block
          Expanded(
            // Expanded widget to make the text scrollable
            child: SingleChildScrollView(
              // SingleChildScrollView widget to enable scrolling
              child: Padding(
                padding: const EdgeInsets.all(16.0), // Padding around the text
                child: Text(
                  // Text widget to display the detailed instructions
                  '1. Launch the Math Quiz App on your device.\n'
                  '2. Select the desired math category and difficulty level.\n'
                  '3. Answer the math problems presented one at a time.\n'
                  '4. Receive immediate feedback on your responses.\n'
                  '5. Track your progress and view your score.\n'
                  '6. Explore different categories and difficulty levels.\n'
                  '7. Replay quizzes to improve your skills.\n'
                  '8. Seek help or support if needed.',
                  style: TextStyle(
                      fontSize: 14,
                      color:
                          Color(0xFFCCBA78)), // Style of the instructions text
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigate to the quiz screen
              Navigator.pushNamed(
                  context, '/level'); // Navigate to the level screen
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
              ), // Style of the button text
            ),
          ),
          SizedBox(height: 30.0), // Empty space below the button
        ],
      ),
    );
  }
}
