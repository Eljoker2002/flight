import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SignUpController {
  String? email, password;
  final formKey = GlobalKey<FormState>();

  Future<void> signup() async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    CollectionReference collection =
        FirebaseFirestore.instance.collection('Users');
    collection.add({
      "Email": email,
      "Password": password,
    });
  }
}
