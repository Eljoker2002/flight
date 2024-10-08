import 'package:flight/Core/app_color.dart';
import 'package:flight/Features/admin/all_forms/all_forms.dart';
import 'package:flight/Features/admin/send_form_fromAdmin.dart';
import 'package:flight/Features/admin/sign_up/screen.dart';
import 'package:flight/Features/log_in_screen/refactor_text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../Core/dimentions/navigator.dart';

class WorkScreen extends StatelessWidget {
  WorkScreen({super.key, required this.adminID});

  String adminID;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image(
          image: AssetImage("asset/images/sky.jpg"),
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity.w,
            height: 580.h,
            decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: AppColor.blue29,
                      offset: Offset(0, 3),
                      blurRadius: 10,
                      spreadRadius: 3),
                ]),
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hello",
                          style: GoogleFonts.aladin(
                            textStyle: TextStyle(
                              color: AppColor.blue29,
                              fontSize: 50.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Icon(
                          PhosphorIconsBold.airplaneInFlight,
                          color: Color(0xFF1A4A94),
                          size: 35.sp,
                        )
                      ],
                    ),
                    Text(
                      "Choose Your Work Today",
                      style: GoogleFonts.aladin(
                        textStyle: TextStyle(
                          color: AppColor.blue29,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  RouteUtils.push(
                                      context: context, screen: SignUpScreen());
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 25.h),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.person_pin,
                                          size: 70.sp,
                                          color: AppColor.white,
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          "Create Account",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: AppColor.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 150.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: AppColor.blue29,
                                      boxShadow: [
                                        BoxShadow(
                                            color: AppColor.blue29,
                                            offset: Offset(0, 3),
                                            blurRadius: 10,
                                            spreadRadius: 3),
                                      ]),
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  RouteUtils.push(
                                      context: context,
                                      screen: MyHomePage(
                                        adminID: adminID,
                                      ));
                                },
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 25.h),
                                    child: Column(
                                      children: [
                                        Icon(
                                          PhosphorIconsBold.pencilSimple,
                                          size: 70.sp,
                                          color: AppColor.white,
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          "Create Form",
                                          style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                              color: AppColor.white,
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  height: 150.h,
                                  width: 150.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(40.sp),
                                      color: AppColor.blue29,
                                      boxShadow: [
                                        BoxShadow(
                                            color: AppColor.blue29,
                                            offset: Offset(0, 3),
                                            blurRadius: 10,
                                            spreadRadius: 3),
                                      ]),
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10.h),
                            child: InkWell(
                              onTap: () {
                                RouteUtils.push(
                                    context: context,
                                    screen: ShowAllForms(
                                      adminID: adminID,
                                    ));
                              },
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 12.h),
                                  child: Column(
                                    children: [
                                      Icon(
                                        CupertinoIcons.printer,
                                        size: 70.sp,
                                        color: AppColor.white,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "Print Forms",
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            color: AppColor.white,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                height: 110.h,
                                width: 310.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: AppColor.blue29,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
