// import 'package:flutter/material.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mathquizapp/WelcomeScreen.dart';
//
// void main() {
//   testWidgets('Elevated Button test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(MaterialApp(
//       home: WelcomeScreen(),
//       routes: {
//         '/select': (context) =>
//             Container(), // Replace 'Container()' with the screen you want to navigate to
//       },
//     ));
//
//     // Verify that the welcome message is displayed.
//     expect(find.text('Welcome to Math Quiz App'), findsOneWidget);
//
//     // Find the button widget
//     final buttonFinder = find.byType(ElevatedButton);
//     // Verify that the button is present
//     expect(buttonFinder, findsOneWidget);
//     // Tap the button
//     await tester.tap(buttonFinder);
//     await tester.pumpAndSettle();
//
//     // Verify that the "Start Quiz" button is displayed.
//     final buttonTextFinder = find.text('Start Quiz');
//     expect(buttonTextFinder, findsOneWidget);
//   });
// }
