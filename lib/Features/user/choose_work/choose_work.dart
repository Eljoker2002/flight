import 'package:flight/Core/app_color.dart';
import 'package:flight/Core/dimentions/navigator.dart';
import 'package:flight/Features/user/competency.dart';
import 'package:flight/Features/user/evaluation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChooseWork extends StatelessWidget {
  ChooseWork({super.key, required this.id});
  String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: AppColor.white,
      // ),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image(
              image: AssetImage("asset/images/sky.jpg"),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
                    height: 85.h,
                  ),
                  Row(
                    children: [
                      Spacer(),
                      InkWell(
                        onTap: () => RouteUtils.push(
                            context: context, screen: EvaluationScreen(id: id)),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.h),
                            child: Column(
                              children: [
                                Icon(
                                  PhosphorIcons.notePencil(
                                      PhosphorIconsStyle.light),
                                  size: 70.sp,
                                  color: AppColor.white,
                                ),
                                SizedBox(height: 15.h),
                                Text(
                                  "Evaluation",
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
                        onTap: () => RouteUtils.push(
                          context: context,
                          screen: CompetencyScreen(id: id),
                        ),
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 26.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      size: 35.sp,
                                      color: AppColor.white,
                                    ),
                                    Text(
                                      "OR",
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: AppColor.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      CupertinoIcons.xmark,
                                      size: 35.sp,
                                      color: AppColor.white,
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 40.h),
                              Text(
                                "Competency",
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
                          height: 150.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40.sp),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
