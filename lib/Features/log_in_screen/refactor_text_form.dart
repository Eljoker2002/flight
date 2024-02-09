import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Core/app_color.dart';

class RefactorTextFormField extends StatelessWidget {
  RefactorTextFormField({
    super.key,
    this.changeHeight = false,
    this.isPassword = false,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.onSaved,
    this.controller,
  });
  final bool changeHeight;
  TextEditingController? controller;
  final bool isPassword;
  Widget? suffixIcon;
  bool obscureText;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 45.w, left: 53.w),
      child: TextFormField(
        controller: controller,
        validator: validator,
        onSaved: onSaved,
        obscureText: obscureText,
        maxLines: 1,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColor.blue29,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 15.w),
          filled: true,
          fillColor: AppColor.white,
        ),
      ),
    );
  }
}
