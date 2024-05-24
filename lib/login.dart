import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app_tutorial/forgot.dart';
import 'package:quiz_app_tutorial/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'Enter email'),
            ),
            TextField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Enter password'),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: signIn,
              child: Text("Login"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.to(Signup()), // Use Get.to for navigation
              child: Text("Register now"),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Get.to(Forgot()),
              child: Text("Forgot password ?"),
            ),
          ],
        ),
      ),
    );
  }
}
