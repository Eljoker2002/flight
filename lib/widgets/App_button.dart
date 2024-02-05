import 'package:flight/Core/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    required this.title,
    required this.height,
    required this.width,
    required this.onTap,
    this.color = AppColor.blue29,
  }) : super(key: key);
  final String title;
  final int height;
  final int width;
  final Color color;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: height.h,
          width: width.w,
          child: Center(
            child: Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(48),
            ),
          ),
        ),
      ),
    );
  }
}
