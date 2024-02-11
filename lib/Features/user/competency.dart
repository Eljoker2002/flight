import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Features/admin/sign_up/controller.dart';
import 'package:flight/Features/admin/sign_up/screen.dart';
import 'package:flight/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompetencyScreen extends StatelessWidget {
  CompetencyScreen({Key? key, required this.id}) : super(key: key);

  String id;
  Future<void> getTraineeName() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h),
            child: Container(
              child: Row(
                children: [
                  CustomText(
                    text: '${id}',
                    fontSize: 16.sp,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
