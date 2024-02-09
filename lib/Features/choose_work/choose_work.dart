import 'package:flight/Core/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class ChooseWork extends StatelessWidget {
  const ChooseWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.white,
      ),
      body: Align(
        alignment: Alignment.topCenter,
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
              height: 65.h,
            ),
            Container(
              child: Column(
                children: [
                  Icon(
                    PhosphorIcons.notePencil(PhosphorIconsStyle.light),
                    size: 120.sp,
                    color: AppColor.white,
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    "Evaluation",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: AppColor.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              height: 170.h,
              width: 270.w,
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
            SizedBox(
              height: 50.h,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check,
                          size: 70.sp,
                          color: AppColor.white,
                        ),
                        Text(
                          "OR",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              color: AppColor.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Icon(
                          CupertinoIcons.xmark,
                          size: 70.sp,
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
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
              height: 170.h,
              width: 270.w,
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
            )
          ],
        ),
      ),
    );
  }
}
