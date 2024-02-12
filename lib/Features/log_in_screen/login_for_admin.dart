import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flight/Core/app_color.dart';
import 'package:flight/Core/dimentions/navigator.dart';
import 'package:flight/Core/validation.dart';
import 'package:flight/Features/admin/admin_choose.dart';
import 'package:flight/Features/log_in_screen/refactor_text_form.dart';
import 'package:flight/Features/user/choose_work/choose_work.dart';
import 'package:flight/widgets/App_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../admin/sign_up/controller.dart';

class LoginScreenForAdmin extends StatefulWidget {
  LoginScreenForAdmin({super.key});

  @override
  State<LoginScreenForAdmin> createState() => _LoginScreenForAdminState();
}

class _LoginScreenForAdminState extends State<LoginScreenForAdmin> {
  bool visible = true;
  SignUpController controller = SignUpController();
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("asset/images/flight.jpg"),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 270.h),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.h),
                          child: Text(
                            "Login For Admin",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: AppColor.blue29,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 240.w),
                          child: Text(
                            "ID:",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: AppColor.blue29,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        RefactorTextFormField(
                          validator: ValidatorUtils.idSignin,
                          onSaved: (data) {
                            controller.id = data;
                          },
                          // controller: emailController,
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 172.w),
                          child: Text(
                            "Password:",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: AppColor.blue29,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        RefactorTextFormField(
                          validator: ValidatorUtils.passwordSignin,
                          onSaved: (data) {
                            controller.password = data;
                          },
                          obscureText: visible,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visible = !visible;
                              });
                            },
                            icon: visible
                                ? Icon(
                                    Icons.visibility_off,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.remove_red_eye,
                                    color: AppColor.blue29,
                                  ),
                          ),
                          isPassword: true,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 125.w),
                          child: Text(
                            "Forget Password?",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColor.blue29,
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppButton(
                          title: "Login",
                          onTap: () async {
                            await FirebaseFirestore.instance
                                .collection('Admin')
                                .doc(controller.id)
                                .snapshots()
                                .forEach((element) {
                              if (element.data()?['ID'] == controller.id &&
                                  element.data()?['Password'] ==
                                      controller.password) {
                                RouteUtils.push(
                                  context: context,
                                  screen: WorkScreen(adminID: controller.id!),
                                );
                              } else {
                                showSnackBar(context, "Invalid Account");
                              }
                            });
                            // else {
                            //  print("object3");
                          },
                          width: 120,
                          height: 43,
                        ),
                      ],
                    ),
                    width: 340.w,
                    height: 350.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.sp),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: AppColor.blue29,
                              offset: Offset(0, 3),
                              blurRadius: 10,
                              spreadRadius: 3),
                        ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColor.blue29,
        content: Text(message),
      ),
    );
  }
}
// List<QueryDocumentSnapshot> data = [];
//
// getData() async {
//   QuerySnapshot querySnapshot =
//       await FirebaseFirestore.instance.collection('Users').get();
//   data.addAll(querySnapshot.docs);
//   for (var document in data) {
//     print(document.data());
//   }
//   setState(() {});}
// final CollectionReference usersCollection =
//     FirebaseFirestore.instance.collection('Users');
// Future<void> fetchData() async {
//   QuerySnapshot querySnapshot = await usersCollection.get();
//   List<DocumentSnapshot> documents = querySnapshot.docs;
//   //Process the retrieved documents

//   if (querySnapshot.docs.isNotEmpty) {
//     // Match found
//     for (var doc in querySnapshot.docs) {
//       // Access the matched document data
//       var data = doc.data();
//     }
//   } else {
//     print("No match found");
//   }
