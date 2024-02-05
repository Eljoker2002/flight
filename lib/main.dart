import 'package:flight/Features/choose_work/choose_work.dart';
import 'package:flight/Features/log_in_screen/login_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Features/admin/screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (ctx, child) {
        ScreenUtil.init(
          ctx,
          designSize: Size(360, 640),
        );
        return child!;
      },
      debugShowCheckedModeBanner: false,
      home:FirstScreenAdmin(),
    );
  }
}