import 'package:flutter/material.dart';
import 'package:notes/methods/adduser.dart';
import 'package:notes/input.dart';
import 'package:notes/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({
    super.key,
    required this.title,
  });

  final String title;
  static const String id = "signup";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text('Hi! Welcome To Homely',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 5)),
            ),
            TextField(
                controller: fullNameEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter your fullname',
                  hintStyle:
                      TextStyle(color: Color.fromARGB(255, 116, 118, 119)),
                  border: OutlineInputBorder(),
                )),
            const SizedBox(height: 20),
            TextField(
              controller: emailEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter email',
                hintStyle: TextStyle(color: Color.fromARGB(255, 116, 118, 119)),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordEditingController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Color.fromARGB(255, 116, 118, 119)),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8.0),
                ),
                onPressed: () {
                  signUpUser(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 5),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LoginPage.id, (route) => false);
                },
                child: const Text('Already have an account login here')),
          ]),
        ),
      ),
    );
  }
}
