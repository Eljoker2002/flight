import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Core/app_color.dart';
import 'package:flight/Core/validation.dart';
import 'package:flight/Features/admin/admin_choose.dart';
import 'package:flight/Features/admin/form_controller.dart';
import 'package:flight/widgets/App_button.dart';
import 'package:flight/widgets/date_widget.dart';
import 'package:flight/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'dart:io';

import '../../Core/dimentions/navigator.dart';

class MyHomePage extends StatefulWidget {
  String adminID;
  MyHomePage({required this.adminID});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late pw.TableRow _tableColumn2;
  TextEditingController instructorID1 = TextEditingController();

  TextEditingController instructorID2 = TextEditingController();

  TextEditingController instructorID3 = TextEditingController();

  TextEditingController instructorID4 = TextEditingController();

  TextEditingController instructorID5 = TextEditingController();

  TextEditingController traineeName = TextEditingController();

  TextEditingController codeNum = TextEditingController();

  TextEditingController date = TextEditingController();

  TextEditingController date1 = TextEditingController();

  TextEditingController date2 = TextEditingController();

  TextEditingController date3 = TextEditingController();

  TextEditingController date4 = TextEditingController();

  TextEditingController date5 = TextEditingController();

  TextEditingController date6 = TextEditingController();

  TextEditingController date7 = TextEditingController();

  TextEditingController date8 = TextEditingController();

  TextEditingController date9 = TextEditingController();

  TextEditingController date10 = TextEditingController();

  TextEditingController date11 = TextEditingController();

  TextEditingController date12 = TextEditingController();

  TextEditingController date13 = TextEditingController();

  TextEditingController date14 = TextEditingController();

  TextEditingController date15 = TextEditingController();

  TextEditingController date16 = TextEditingController();

  TextEditingController sector1 = TextEditingController();

  TextEditingController sector2 = TextEditingController();

  TextEditingController sector3 = TextEditingController();

  TextEditingController sector4 = TextEditingController();

  TextEditingController sector5 = TextEditingController();

  TextEditingController sector6 = TextEditingController();

  TextEditingController sector7 = TextEditingController();

  TextEditingController sector8 = TextEditingController();

  TextEditingController sector9 = TextEditingController();

  TextEditingController sector10 = TextEditingController();

  TextEditingController sector11 = TextEditingController();

  TextEditingController sector12 = TextEditingController();

  TextEditingController sector13 = TextEditingController();

  TextEditingController sector14 = TextEditingController();

  TextEditingController sector15 = TextEditingController();

  TextEditingController sector16 = TextEditingController();

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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
        child: CustomFormField(),
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
            CustomText(
                text:
                    "Preflight emergency equipment check . location/operation",
                fontSize: 14.sp),
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "2-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(
              text: "Exit operation",
              fontSize: 15.sp,
            )
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "3-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(
                text: "Galley. electrical equipment and Circuit breakers",
                fontSize: 15.sp)
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "4-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(
              text: "Intercommunication",
              fontSize: 15.sp,
            )
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "5-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(
              text: "Crew resource management & GSOP ",
              fontSize: 15.sp,
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "6-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(text: "Control Panels", fontSize: 15.sp),
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "7-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(
                text: "Passenger handling (disruptive passenger awareness)",
                fontSize: 15.sp)
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "8-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(
                text: "Cockpit door . window . seat operations",
                fontSize: 15.sp)
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "9-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(text: "First aid", fontSize: 15.sp)
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
        padding: EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: Row(
          children: [
            CustomText(
              text: "10-",
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(text: "Dangerous goods awareness", fontSize: 15.sp),
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
              fontSize: 15.sp,
            ),
            SizedBox(width: 4.w),
            CustomText(text: "Drills", fontSize: 15.sp)
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
            child: CustomFormField(),
          ),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: InkWell(
            onTap: () {
              RouteUtils.pop(context: context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 20.sp,
              color: AppColor.blue29,
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 1780.h,
                  width: 1285.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: instructorID1,
                              text: "Id of instructor",
                            ),
                          ),
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: date1,
                              text: "Date of Travel",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: instructorID2,
                              text: "Id of instructor",
                            ),
                          ),
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: date2,
                              text: "Date of Travel",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: instructorID3,
                              text: "Id of instructor",
                            ),
                          ),
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: date3,
                              text: "Date of Travel",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: instructorID4,
                              text: "Id of instructor",
                            ),
                          ),
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: date4,
                              text: "Date of Travel",
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: instructorID5,
                              text: "Id of instructor",
                            ),
                          ),
                          Container(
                            height: 50.h,
                            child: CustomFormField(
                              controller: date5,
                              text: "Date of Travel",
                            ),
                          ),
                        ],
                      ),
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
                                  text: "CABIN CREW INFLIGHT COMPETENCY CHECK",
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
                                    CustomFormField(),
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
                      Align(
                        alignment: Alignment.center,
                        child: AppButton(
                          title: 'Send',
                          width: 120,
                          height: 43,
                          onTap: () {
                            DocumentReference form = FirebaseFirestore.instance
                                .collection('Form(Data)')
                                .doc(traineeName.text);
                            form.set({
                              "Ins ID 1": instructorID1.text,
                              "Ins ID 2": instructorID2.text,
                              "Trainee Name": traineeName.text,
                              "Code Num": codeNum.text,
                            });
                            DocumentReference f = FirebaseFirestore.instance
                                .collection('Admin')
                                .doc(widget.adminID);
                            f.update({
                              "Trainee Name":
                                  FieldValue.arrayUnion([traineeName.text]),
                              "Code Num": FieldValue.arrayUnion([codeNum.text]),
                              //"Date": date1.text,
                            });
                            DocumentReference form2 = FirebaseFirestore.instance
                                .collection('Users')
                                .doc(instructorID1.text);
                            form2.update({
                              "Trainee Name":
                                  FieldValue.arrayUnion([traineeName.text]),
                              "Code Num": FieldValue.arrayUnion([codeNum.text]),
                              //"Date": date1.text,
                              "Date": FieldValue.arrayUnion([date1.text]),
                            });
                            DocumentReference form3 = FirebaseFirestore.instance
                                .collection('Users')
                                .doc(instructorID2.text);
                            form3.update({
                              "Trainee Name":
                                  FieldValue.arrayUnion([traineeName.text]),
                              "Code Num": FieldValue.arrayUnion([codeNum.text]),
                              //"Date": date2.text,
                              "Date": FieldValue.arrayUnion([date2.text]),
                            });
                            RouteUtils.pop(context: context);
                            // DocumentReference form4 = FirebaseFirestore.instance
                            //     .collection('Users')
                            //     .doc(instructorID3.text);
                            // form4.set({
                            //   "Trainee Name": FieldValue.arrayUnion([traineeName.text]),
                            //   "Code Num": FieldValue.arrayUnion([codeNum.text]),
                            //   //"Date": date2.text,
                            //   "Date": FieldValue.arrayUnion([date3.text]),
                            // });
                            // DocumentReference form5 = FirebaseFirestore.instance
                            //     .collection('Users')
                            //     .doc(instructorID4.text);
                            // form5.set({
                            //   "Trainee Name": FieldValue.arrayUnion([traineeName.text]),
                            //   "Code Num": FieldValue.arrayUnion([codeNum.text]),
                            //   //"Date": date2.text,
                            //   "Date": FieldValue.arrayUnion([date4.text]),
                            // });
                            // DocumentReference form6 = FirebaseFirestore.instance
                            //     .collection('Users')
                            //     .doc(instructorID5.text);
                            // form6.set({
                            //   "Trainee Name": FieldValue.arrayUnion([traineeName.text]),
                            //   "Code Num": FieldValue.arrayUnion([codeNum.text]),
                            //   //"Date": date2.text,
                            //   "Date": FieldValue.arrayUnion([date5.text]),
                            // });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////// Refactor
class CustomFormField extends StatelessWidget {
  void Function(String?)? onSaved;
  TextEditingController? controller;
  String? Function(String?)? validator;
  final String? text;
  CustomFormField({
    Key? key,
    this.onSaved,
    this.controller,
    this.text,
    this.validator,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 210.w,
      child: TextFormField(
        validator: validator,
        controller: controller,
        cursorHeight: 20.h,
        style: TextStyle(fontSize: 15.sp),
        onSaved: onSaved,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14.sp,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

class QuestionsFormField extends StatelessWidget {
  void Function(String?)? onSaved;
  TextEditingController? controller;
  final String? text;
  QuestionsFormField({
    Key? key,
    this.onSaved,
    this.controller,
    this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      width: 983.w,
      child: TextFormField(
        controller: controller,
        cursorHeight: 20.h,
        style: TextStyle(fontSize: 15.sp),
        onSaved: onSaved,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14.sp,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
// pw.Widget _buildPdfContent() {
//   return pw.Container(
//     alignment: pw.Alignment.center,
//     child: pw.Text('Hello World!', style: pw.TextStyle(fontSize: 20)),
//   );
// }
// pw.TableRow _tableRow = pw.TableRow(children: <pw.Widget>[
//   pw.Padding(
//     padding: pw.EdgeInsets.all(10.0),
//     child: pw.Text("Content1"),
//   ),
// ]);
// pw.TableRow _tableColumn1 = pw.TableRow(children: <pw.Widget>[
//   pw.Padding(
//     padding: pw.EdgeInsets.all(10.0),
//     child: pw.Text("Content2"),
//   ),
//   pw.Padding(
//     padding: pw.EdgeInsets.all(10.0),
//     child: pw.Text("Content2"),
//   ),
// ]);
