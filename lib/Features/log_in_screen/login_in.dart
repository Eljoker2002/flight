import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Core/app_color.dart';
import 'package:flight/Features/log_in_screen/refactor_text_form.dart';
import 'package:flight/widgets/App_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
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
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 270.h),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.h),
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
                        padding: EdgeInsets.only(right: 210.w),
                        child: Text(
                          "Email:",
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
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 20.h,
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
                        controller: passwordController,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 125.w),
                        child: Text(
                          "Forget Password",
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
                        height: 5.h,
                      ),
                      AppButton(
                        title: "Login",
                        onTap: () {
                          CollectionReference collection =
                              FirebaseFirestore.instance.collection('Users');
                          collection.add({
                            "Email": emailController.text,
                            "Password": passwordController.text
                          });
                        },
                        width: 120,
                        height: 43,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      InkWell(
                        onTap: () {
                          //    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
                        },
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
                    ],
                  ),
                  width: 340.w,
                  height: 350.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
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
        ],
      ),
    );
  }
}
