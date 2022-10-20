import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:notes/input.dart';
import 'package:notes/login.dart';
import 'package:notes/usermodel.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> signUpUser(BuildContext context) async {
  try {
    showLoading(context: context);

    User? userCredential = (await auth.createUserWithEmailAndPassword(
      email: emailEditingController.text,
      password: passwordEditingController.text,
    ))
        .user;

    if (userCredential != null) {
      UserData userData = UserData(
        fullname: fullNameEditingController.text,
        email: emailEditingController.text,
        password: passwordEditingController.hashCode,
      );
      // Save userCredential to database
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      firebaseFirestore
          .collection("users")
          .add(userData.toFirestore())
          .then((DocumentReference doc) {
        print(doc.id);
      });
    }
    Navigator.of(context).pop();
    // ignore: use_build_context_synchronously
    Navigator.pushNamedAndRemoveUntil(context, LoginPage.id, (route) => false);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      var snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'On Snap!',
          message: 'Weak Password',
          contentType: ContentType.failure,
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (e.code == "email-already-in-use") {
      var snackBar = SnackBar(
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'On Snap!',
          message: 'Email Already In Use',
          contentType: ContentType.failure,
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  } catch (e) {
    Navigator.of(context).pop();
    print(e);
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
