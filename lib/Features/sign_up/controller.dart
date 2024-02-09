import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpController {
  String? id, password;
  final formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: id!,
      password: password!,
    );
    // await FirebaseFirestore.instance.collection('Users').doc(email).set({
    //   "ID": email,
    //   "Password": password,
    // });
  }

  Future<void> signIn() async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: id!,
      password: password!,
    );
    // await FirebaseFirestore.instance.collection('Users').doc(email).set({
    //   "ID": email,
    //   "Password": password,
    // });
  }
}
