import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;

class CustomText extends StatelessWidget {
  CustomText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.color,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}

