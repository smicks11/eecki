import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eecki/views/Onboarding/landing_screen.dart';
import 'package:eecki/views/customers/Auth/signup_steps/success.dart';
import 'package:eecki/views/customers/page_view_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  static Future<void> createWithEmailAndPwd(
      {String email,
      String password,
      BuildContext context,
      String fName,
      String lName}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      FirebaseFirestore.instance
          .collection("UserData")
          .doc(userCredential.user.uid)
          .set({
        "userId": userCredential.user.uid,
        "fName": fName,
        "email": email,
        "password": password,
      }).then((value) => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                  builder: (builder) => const CustomerSignUpSuccess()),
              (route) => false));
    } catch (e) {
      print(e.toString());
    }
  }

  static Future<void> signInWithEmailAndPwd(
      {String userSignInEmail,
      String userSignInPassword,
      BuildContext context}) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: userSignInEmail, password: userSignInPassword)
          // ignore: missing_return
          .then((value) {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (builder) => PageViewScreen()),
            (route) => false);
      });
    } catch (e) {
      print(e.toString());
    }
  }

  // Sign out
   Future<void> signOut(BuildContext context) async {
    try {
      FirebaseAuth.instance.authStateChanges().listen((User user) {
        if (user != null) {
          print('User is signed in and will undergo the sign out function!!!');
          return FirebaseAuth.instance.signOut().then((value) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => LandingScreen()),
            );
          }).then((value) => showSnackBar(
                context,
                "Signed out",
              ));
        } else {
          print('There is no user currently existing on the app its empty!');
        }
      });
    } catch (error) {
      print("this is a triggered error $error.toString()");
    }
  }

  void showSnackBar(BuildContext context, String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
