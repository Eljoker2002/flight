import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Core/app_color.dart';

class RefactorTextFormField extends StatelessWidget {
  RefactorTextFormField({
    super.key,
    this.changeHeight = false,
    this.controller,
  });
  final bool changeHeight;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 45.w, left: 53.w),
      child: TextFormField(
        controller: controller,
        maxLines: 1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 15.w),
          filled: true,
          fillColor: AppColor.white,
        ),
      ),
    );
  }
}
