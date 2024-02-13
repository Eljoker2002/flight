import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../Core/app_color.dart';
import '../../../Core/dimentions/navigator.dart';
import '../../user/choose_work/choose_work.dart';

class SignUpController {
  List<dynamic> traineeName = [];
  List<dynamic> codeNo = [];
  List<dynamic> date = [];
  String? id, password;


  Future<void> registerUser() async {
    final user =
        await FirebaseFirestore.instance.collection('Users').doc(id).set({
      "ID": id,
      "Password": password,
    });
  }

  Future<void> registerAdmin() async {
    final user =
        await FirebaseFirestore.instance.collection('Admin').doc(id).set({
      "ID": id,
      "Password": password,
    });
  }
}

// Future<void> signIn() async {
//   formKey2.currentState!.save();
//   if (!formKey2.currentState!.validate()) {
//     return;
//     // final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
//     //   email: id!,
//     //   password: password!,
//     // );
//   } else {
//     await FirebaseFirestore.instance
//         .collection('Users')
//         .doc(id)
//         .snapshots()
//         .forEach((element) {
//       if (element.data()?['ID'] == id &&
//           element.data()?['Password'] == password) {
//         RouteUtils.push(context: context, screen: ChooseWork());
//       } else {
//         showSnackBar(context, "Invalid Account");
//       }
//     });

// }
