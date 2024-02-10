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

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visible = true;
  SignUpController controller = SignUpController();

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
            key: controller.formKey2,
            child: SingleChildScrollView(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 270.h),
                  child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Text(
                            "Login",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: AppColor.blue29,
                                fontSize: 35.sp,
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
                          height: 5.h,
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
                            await controller.signIn();
                            RouteUtils.push(
                                context: context, screen: WorkScreen());
                          },
                          width: 120,
                          height: 43,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        InkWell(
                          onTap: () {
                            //    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                          },
                          child: InkWell(
                            onTap: () => RouteUtils.pushAndRemoveAll(context: context, screen: WorkScreen()),
                            child: Text(
                              "I’am an admin",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                  color: AppColor.blue29,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
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
