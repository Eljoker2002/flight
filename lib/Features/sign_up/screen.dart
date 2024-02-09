import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Core/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Core/app_color.dart';
import '../../widgets/App_button.dart';
import '../log_in_screen/refactor_text_form.dart';
import 'controller.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool visible = true;
  SignUpController controller = SignUpController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Scaffold(
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 25.h),
                          child: Text(
                            "Create Account",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: AppColor.blue29,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w700,
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
                                color: Colors.grey,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        RefactorTextFormField(
                          onSaved: (v) {
                            controller.email = v;
                          },
                          validator: ValidatorUtils.email,
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
                                color: Colors.grey,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        RefactorTextFormField(
                          onSaved: (v) {
                            controller.password = v;
                          },
                          validator: ValidatorUtils.password,
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
                          height: 20.h,
                        ),
                        AppButton(
                          title: "Sign Up",
                          onTap: () {
                            controller.signup();
                          },
                          width: 120,
                          height: 43,
                        ),
                        SizedBox(
                          height: 15.h,
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
                            spreadRadius: 3,
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
