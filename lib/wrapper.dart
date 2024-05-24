// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/HomeScreen.dart';
import 'package:quiz_app_tutorial/forgot.dart';
import 'package:quiz_app_tutorial/login.dart';
import 'package:quiz_app_tutorial/main.dart';
import 'package:quiz_app_tutorial/signup.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            return HomeScreen(); //ekhane edit korte hobe
          } else {
            return Login();
          }
        },
      ),
    );
  }
}
