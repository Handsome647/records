import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:notes/input.dart';
import 'package:notes/mainpage.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

void signIn(BuildContext context) async {
  try {
    showLoading(context: context);
    User? credential = (await auth.signInWithEmailAndPassword(
      email: emailEditingController.text,
      password: passwordEditingController.text,
    ))
        .user;
    FirebaseFirestore db = FirebaseFirestore.instance;

    final docRef = db.collection('users').doc('$credential');
    docRef.get().then((value) => value).then((value) {
      value.data();
      Navigator.of(context).pop();
      Navigator.pushNamedAndRemoveUntil(context, MainPage.id, (route) => false);
    });
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}

void showLoading({required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
        width: 100,
        height: 100,
        child: const Center(
          child: SizedBox(
            width: 40,
            height: 40,
            child: CircularProgressIndicator(),
          ),
        ),
      );
    },
  );
}
