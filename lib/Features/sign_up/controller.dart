import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SignUpController {
  String? id, password;
  final formKey = GlobalKey<FormState>();

  Future<void> signup() async {
    formKey.currentState!.save();
    if (!formKey.currentState!.validate()) {
      return;
    }
    await FirebaseFirestore.instance.collection('Users').doc(id).set({
      "ID": id,
      "Password": password,
    });
  }
}
