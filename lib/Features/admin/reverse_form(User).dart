import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReverseFormFromAdmin extends StatelessWidget {
  ReverseFormFromAdmin(
      {Key? key, required this.traineeName, required this.date})
      : super(key: key);
  String traineeName;
  String date;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
        child: Column(
          children: [
            Text('${traineeName}'),
            Text('${date}'),
          ],
        ),
      ),
    );
  }
}
