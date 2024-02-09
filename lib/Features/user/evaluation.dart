import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../Core/dimentions/navigator.dart';
import '../../widgets/text_form.dart';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Core/app_color.dart';
import 'package:flight/Features/admin/admin_choose.dart';
import 'package:flight/widgets/App_button.dart';
import 'package:flight/widgets/date_widget.dart';
import 'package:flight/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'dart:io';

import '../admin/send_form.dart';

class EvaluationScreen extends StatefulWidget {
  const EvaluationScreen({super.key});

  @override
  State<EvaluationScreen> createState() => _EvaluationScreenState();
}

class _EvaluationScreenState extends State<EvaluationScreen> {
  TextEditingController traineeName = TextEditingController();
  TextEditingController codeNum = TextEditingController();
  TextEditingController date = TextEditingController();
  TextEditingController question1 = TextEditingController();
  TextEditingController question2 = TextEditingController();
  TextEditingController question3 = TextEditingController();
  TextEditingController question4 = TextEditingController();
  TextEditingController question5 = TextEditingController();
  TextEditingController question6 = TextEditingController();
  TextEditingController question7 = TextEditingController();
  TextEditingController question8 = TextEditingController();
  TextEditingController question9 = TextEditingController();
  TextEditingController question10 = TextEditingController();
  TextEditingController question11 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TableRow _tableColumn2 = TableRow(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: CustomText(
            text: "Sectors",
            fontSize: 14.sp,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: CustomText(
            text: "Flight No",
            fontSize: 14.sp,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: CustomText(
            text: "A/C Type",
            fontSize: 14.sp,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: CustomText(
            text: "Position",
            fontSize: 14.sp,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: CustomText(
            text: "Date",
            fontSize: 14.sp,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: CustomText(
            text: "Instructor Name",
            fontSize: 14.sp,
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: CustomText(
            text: "Code No",
            fontSize: 14.sp,
          ),
        ),
      ),
    ]);
    TableRow _tableColumn3 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "1-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn31 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "2-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn32 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "3-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn33 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "4-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn34 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "5-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn35 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "6-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn36 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "7-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn37 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "8-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn38 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "9-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn39 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "10-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn310 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "11-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn311 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "12-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn312 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "13-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn313 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "14-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn314 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "15-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn315 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: Row(
          children: [
            CustomText(
              text: "16-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            SizedBox(width: 130.w, child: CustomFormField()),
          ],
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: Row(
            children: [
              CustomText(
                text: "MS",
                fontSize: 12.sp,
              ),
              SizedBox(width: 4.w),
              SizedBox(width: 130.w, child: CustomFormField()),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn1 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(9.sp),
        child: Center(
          child: CustomText(
            text: "INFLIGHT COMPETENCY CHECK ITEMS",
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(9.sp),
        child: Center(
          child: CustomText(
            text: "US",
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(9.sp),
        child: Center(
          child: CustomText(
            text: "S1",
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(9.sp),
        child: Center(
          child: CustomText(
            text: "S2",
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(9.sp),
        child: Center(
          child: CustomText(
            text: "S3",
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);
    TableRow _tableColumn4 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: Row(
          children: [
            CustomText(
              text: "1-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question1,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn5 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: Row(
          children: [
            CustomText(
              text: "2-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question2,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn6 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: Row(
          children: [
            CustomText(
              text: "3-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question3,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn7 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: Row(
          children: [
            CustomText(
              text: "4-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question4,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn8 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "5-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question5,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn9 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "6-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question6,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn10 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "7-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question7,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn11 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "8-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question8,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn12 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "9-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            QuestionsFormField(
              controller: question9,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn13 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(5.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "10-",
              fontSize: 13.sp,
            ),
            QuestionsFormField(
              controller: question10,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn14 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(5.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "11-",
              fontSize: 13.sp,
            ),
            QuestionsFormField(
              controller: question11,
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0.sp),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn15 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 25.h),
        child: Center(
          child: CustomText(
            text: "First Result",
            fontSize: 14.sp,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: CustomText(
            text: '''  Completion 
        date''',
            fontSize: 14.sp,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: CustomText(
            text: '''   Instructor 
      Name''',
            fontSize: 14.sp,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: CustomText(
            text: '''    Instructor      
    signature''',
            fontSize: 14.sp,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: CustomText(
            text: '''    Instructor   
     Code No''',
            fontSize: 14.sp,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: CustomText(
            text: '''   Instructor 
     license''',
            fontSize: 14.sp,
          ),
        ),
      ),
    ]);
    TableRow _tableColumn16 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
        child: Row(
          children: [
            Spacer(),
            Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
            CustomText(
              text: "S",
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
            Spacer(),
            Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
            CustomText(
              text: "US",
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
            Spacer(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(28.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn17 = TableRow(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Center(
            child: CustomText(
              text: '''     Trainee
    Signature''',
              fontSize: 14.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(28.sp),
          child: Center(
            child: CustomText(
              text: "Date",
              fontSize: 14.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Center(
            child: CustomText(
              text: '''  Examiner
    Name''',
              fontSize: 14.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Center(
            child: CustomText(
              text: '''  Examiner
  Signature''',
              fontSize: 14.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Center(
            child: CustomText(
              text: '''  Examiner
   Code No''',
              fontSize: 14.sp,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.sp),
          child: Center(
            child: CustomText(
              text: '''   Examiner
    License''',
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
    TableRow _tableColumn18 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(28.sp),
        child: CustomDate(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.only(top: 30.h),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn19 = TableRow(
      children: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.all(15.sp),
            child: CustomText(
              text: "G.M.F.T       Signature",
              fontSize: 14.sp,
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(15.sp),
            child: CustomText(
              text: "Date",
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
    TableRow _tableColumn20 = TableRow(
      children: <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.all(10.sp),
            child: CustomFormField(),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(15.sp),
            child: CustomDate(),
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            // onTap: (){
            //   RouteUtils.pop(context: context);
            // },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20.sp,
              color: AppColor.blue29,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, bottom: 10.h),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 1452.h,
                    width: 1285.w,
                    child: Column(
                      children: [
                        Table(
                          defaultColumnWidth: FixedColumnWidth(1285.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            TableRow(children: [
                              Container(
                                width: 1285.w,
                                height: 40.h,
                                child: Center(
                                  child: CustomText(
                                    text:
                                    "CABIN CREW INFLIGHT COMPETENCY CHECK",
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ]),
                          ],
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(643.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            TableRow(
                              children: [
                                Container(
                                  // color: Colors.cyanAccent,
                                  width: 321.5.w,
                                  height: 50.h,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 2.w),
                                      CustomText(
                                        text: "Trainee Name:",
                                        fontSize: 14.sp,
                                      ),
                                      CustomFormField(
                                        controller: traineeName,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // color: Colors.cyanAccent,
                                  width: 321.5.w,
                                  height: 50.h,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 2.w),
                                      CustomText(
                                        text: "Code Num:",
                                        fontSize: 14.sp,
                                      ),
                                      CustomFormField(
                                        controller: codeNum,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                          columnWidths: {
                            0: FlexColumnWidth(4),
                            1: FlexColumnWidth(1),
                          },
                          defaultColumnWidth: FixedColumnWidth(1285.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            TableRow(
                              children: [
                                Container(
                                  // color: Colors.cyanAccent,
                                  width: 500.w,
                                  height: 30.h,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 2.w),
                                      CustomText(
                                        text: "Training Categories:",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(value: false, onChanged: (v) {}),
                                      CustomText(
                                        text: "Initial",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(value: false, onChanged: (v) {}),
                                      CustomText(
                                        text: "Transition",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(value: false, onChanged: (v) {}),
                                      CustomText(
                                        text: "Requalification Recurrent",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(value: false, onChanged: (v) {}),
                                      CustomText(
                                        text: "SEP1",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(value: false, onChanged: (v) {}),
                                      CustomText(
                                        text: "SEP2",
                                        fontSize: 14.sp,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // color: Colors.cyanAccent,
                                  width: 50.w,
                                  height: 30.h,
                                  child: Row(
                                    children: [
                                      SizedBox(width: 2.w),
                                      CustomText(
                                        text: "Date:",
                                        fontSize: 14.sp,
                                      ),
                                      SizedBox(width: 4.w),
                                      Container(
                                        height: 30.h,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 10.h),
                                          child: CustomFormField(
                                            controller: date,
                                            text: "   /    /  20",
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Table(
                            defaultColumnWidth: FixedColumnWidth(184.w),
                            border: TableBorder.all(width: 1.w),
                            children: <TableRow>[_tableColumn2]),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(184.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn3,
                            _tableColumn31,
                            _tableColumn32,
                            _tableColumn33,
                            _tableColumn34,
                            _tableColumn35,
                            _tableColumn36,
                            _tableColumn37,
                            _tableColumn38,
                            _tableColumn39,
                            _tableColumn310,
                            _tableColumn311,
                            _tableColumn312,
                            _tableColumn313,
                            _tableColumn314,
                            _tableColumn315,
                          ],
                        ),
                        Table(
                          columnWidths: {
                            0: FlexColumnWidth(15),
                            1: FlexColumnWidth(1),
                            2: FlexColumnWidth(1),
                            3: FlexColumnWidth(1),
                            4: FlexColumnWidth(1),
                          },
                          defaultColumnWidth: FixedColumnWidth(300.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn1,
                            _tableColumn4,
                            _tableColumn5,
                            _tableColumn6,
                            _tableColumn7,
                            _tableColumn8,
                            _tableColumn9,
                            _tableColumn10,
                            _tableColumn11,
                            _tableColumn12,
                            _tableColumn13,
                            _tableColumn14,
                          ],
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(214.5.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn15,
                          ],
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(214.5.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn16,
                          ],
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(214.5.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn17,
                          ],
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(214.5.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn18,
                          ],
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(643.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn19,
                          ],
                        ),
                        Table(
                          defaultColumnWidth: FixedColumnWidth(643.w),
                          border: TableBorder.all(width: 1.w),
                          children: <TableRow>[
                            _tableColumn20,
                          ],
                        ),
                        SizedBox(height: 24.h),
                        AppButton(
                          title: 'Send',
                          width: 120,
                          height: 43,
                          onTap: () {
                            CollectionReference form = FirebaseFirestore
                                .instance
                                .collection('Form(Data)');
                            form.add({
                              "Trainee Name": traineeName.text,
                              "Code Num": codeNum.text,
                              "Date": date.text,
                              "Question1": question1.text,
                              "Question2": question2.text,
                              "Question3": question3.text,
                              "Question4": question4.text,
                              "Question5": question5.text,
                              "Question6": question6.text,
                              "Question7": question7.text,
                              "Question8": question8.text,
                              "Question9": question9.text,
                              "Question10": question10.text,
                              "Question11": question11.text,
                            });
                            RouteUtils.pop(context: context);

                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
