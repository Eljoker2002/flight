import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpController {
  String? id, password;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  Future<void> signUp() async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      print("object");
    } else {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: id!,
        password: password!,
      );
      await FirebaseFirestore.instance.collection('Users').doc(id).set({
        "ID": id,
      });
    }
    // await FirebaseFirestore.instance.collection('Users').doc(email).set({
    //   "ID": email,
    //   "Password": password,
    // });
  }

  Future<void> signIn() async {
    formKey2.currentState!.save();
    if (!formKey2.currentState!.validate()) {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: id!,
        password: password!,
      );
    } else {
      print("object");
    }
  }
}
