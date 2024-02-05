import 'package:flight/Core/app_color.dart';
import 'package:flight/Features/log_in_screen/refactor_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

final _formkey = GlobalKey<FormState>();

class InformationScreen extends StatelessWidget {
  const InformationScreen({super.key});

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
      child: Padding(
        padding:EdgeInsets.only(top: 30.h),
        child: Column(
          children: [
           Padding(
             padding: EdgeInsets.only(right: 145.w),
             child: Text(
               "Trainee Name:",
               style: GoogleFonts.poppins(
                 textStyle: TextStyle(
                   color: AppColor.blue29,
                   fontSize: 15.sp,
                   fontWeight: FontWeight.w800,
                 ),
               ),
             ),
           ),
           SizedBox(height: 8.h,),
           SizedBox(
             height: 30.h,
             width: 280.w,
             child: TextFormField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(
                 ),
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color: AppColor.blue2F)
                 ),enabledBorder:OutlineInputBorder(
                 borderSide: BorderSide(
                   color: AppColor.blue29,
                   width: 1.5.w
                 )
               )
               ),
             ),
           ),SizedBox(height: 15.h,),
            Column(children: [
              Padding(
                padding: EdgeInsets.only(right: 145.w),
                child: Text("Code Number:",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColor.blue29,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding:EdgeInsets.only(right: 80.w),
                child: SizedBox(
                  height: 30.h,
                  width: 200.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColor.blue2F)
                        ),enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColor.blue29,
                            width: 1.5.w
                        )
                    )
                    ),
                  ),
                ),
              )
            ],
            ),SizedBox(height: 20.h),
            Divider(
              height: 1.h,
              color: Colors.grey,
              thickness: .3.h,
            ),SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(right: 116.w),
              child: Text("Write Questions",
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    color: AppColor.blue29,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),),
            )
          ],
        ),
      ),
      decoration: BoxDecoration(
      color: AppColor.white,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
      boxShadow: [
      BoxShadow(
      color: AppColor.blue29,
      offset: Offset(0, 3),
      blurRadius: 10,
      spreadRadius: 3),
      ]),

      ),
    ),
      ],
    ));
  }
}
