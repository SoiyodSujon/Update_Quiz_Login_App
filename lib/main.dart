// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/HomeScreen.dart';
import 'package:quiz_app_tutorial/wrapper.dart';
import '/screens/quiz_screen.dart';
import '/widgets/add_question_screen.dart';
import 'package:quiz_app_tutorial/widgets/next_button.dart'; // Import the RectangularButton widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBfScoh6FVVYNvCtEoxxNc3NHsjHJerSb8",
          projectId: "final-quiz-login",
          messagingSenderId: "599388423984",
          appId: "1:599388423984:web:df4e7a651fb8822518eaf5"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark().copyWith(),
      home: Wrapper(),
    );
  }
}
