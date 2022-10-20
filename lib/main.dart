import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notes/login.dart';
import 'package:notes/mainpage.dart';
import 'package:notes/signup.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homely',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPage(title: 'Homely'),
      routes: {
        SignUpPage.id: (context) => const SignUpPage(
              title: 'SignUp',
            ),
        LoginPage.id: (context) => const LoginPage(
              title: 'Login',
            ),
        MainPage.id: (context) => const MainPage(
              title: 'Home Page',
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
