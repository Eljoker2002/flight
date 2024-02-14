import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flight/Core/dimentions/navigator.dart';
import 'package:flight/Core/validation.dart';
import 'package:flight/Features/admin/send_form_fromAdmin.dart';
import 'package:flight/Features/log_in_screen/login_for_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../Core/app_color.dart';
import '../../../widgets/App_button.dart';
import '../../log_in_screen/refactor_text_form.dart';
import '../admin_choose.dart';
import 'controller.dart';

class SignUpScreen2 extends StatefulWidget {
  SignUpScreen2({Key? key}) : super(key: key);

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  final formKey = GlobalKey<FormState>();
  SignUpController controller = SignUpController();
  String? id, password;
  bool visible = true;
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
          Form(
            key: formKey,
            child: SingleChildScrollView(
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
                            '''   Create Account
        For Admin''',
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
                          padding: EdgeInsets.only(right: 240.w),
                          child: Text(
                            "ID:",
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
                          validator: ValidatorUtils.id,
                          onSaved: (data) {
                            controller.id = data;
                          },
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
                          validator: ValidatorUtils.password,
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
                          height: 20.h,
                        ),
                        AppButton(
                          title: "Sign Up",
                          onTap: () async {
                            if (formKey.currentState!.validate()) {
                              await FirebaseFirestore.instance
                                  .collection('Admin')
                                  .doc(controller.id)
                                  .snapshots()
                                  .forEach((element) {
                                if (element.data()?['ID'] == controller.id) {
                                  return showSnackBar(context,
                                      "This id has been created before");
                                } else {
                                  controller.registerAdmin();
                                  RouteUtils.pop(
                                    context: context,
                                  );
                                  RouteUtils.pop(
                                    context: context,
                                  );
                                }
                              });
                              // } else {}
                            }
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
                        borderRadius: BorderRadius.circular(35.sp),
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
