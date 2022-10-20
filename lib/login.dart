import 'package:flutter/material.dart';
import 'package:notes/mainpage.dart';
import 'package:notes/methods/signin.dart';
import 'package:notes/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required this.title,
  });

  final String title;
  static const String id = "login";

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Text('Welcome Back!!! \n We\'ve Been Missed',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 5)),
            ),
            TextField(
              controller: emailEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter email',
                hintStyle: TextStyle(color: Colors.lightBlue),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordEditingController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter your password',
                hintStyle: TextStyle(color: Colors.lightBlue),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8.0),
                ),
                onPressed: () {
                  signIn(context);
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 5),
                  ),
                )),
            TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, SignUpPage.id, (route) => false);
                },
                child: const Text('Don\'t have an account sign up here')),
          ]),
        ),
      ),
    );
  }
}
