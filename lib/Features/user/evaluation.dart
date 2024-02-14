import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Features/admin/send_form_fromAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/app_color.dart';
import '../../Core/dimentions/navigator.dart';
import '../../widgets/App_button.dart';
import '../../widgets/text_form.dart';

class EvaluationScreen extends StatefulWidget {
  EvaluationScreen({Key? key, required this.id});
  String id;
  @override
  State<EvaluationScreen> createState() => _EvaluationScreenState();
}

TextEditingController traineeName = TextEditingController();
TextEditingController codeNo = TextEditingController();
TextEditingController remarks = TextEditingController();
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

TextEditingController f1 = TextEditingController();
TextEditingController f2 = TextEditingController();
TextEditingController f3 = TextEditingController();
TextEditingController f4 = TextEditingController();
TextEditingController f5 = TextEditingController();
TextEditingController f6 = TextEditingController();
TextEditingController f7 = TextEditingController();
TextEditingController f8 = TextEditingController();
TextEditingController f9 = TextEditingController();
TextEditingController f10 = TextEditingController();
TextEditingController f11 = TextEditingController();
TextEditingController f12 = TextEditingController();
TextEditingController f13 = TextEditingController();
TextEditingController f14 = TextEditingController();
TextEditingController f15 = TextEditingController();
TextEditingController f16 = TextEditingController();

TextEditingController type1 = TextEditingController();
TextEditingController type2 = TextEditingController();
TextEditingController type3 = TextEditingController();
TextEditingController type4 = TextEditingController();
TextEditingController type5 = TextEditingController();
TextEditingController type6 = TextEditingController();
TextEditingController type7 = TextEditingController();
TextEditingController type8 = TextEditingController();
TextEditingController type9 = TextEditingController();
TextEditingController type10 = TextEditingController();
TextEditingController type11 = TextEditingController();
TextEditingController type12 = TextEditingController();
TextEditingController type13 = TextEditingController();
TextEditingController type14 = TextEditingController();
TextEditingController type15 = TextEditingController();
TextEditingController type16 = TextEditingController();

TextEditingController pos1 = TextEditingController();
TextEditingController pos2 = TextEditingController();
TextEditingController pos3 = TextEditingController();
TextEditingController pos4 = TextEditingController();
TextEditingController pos5 = TextEditingController();
TextEditingController pos6 = TextEditingController();
TextEditingController pos7 = TextEditingController();
TextEditingController pos8 = TextEditingController();
TextEditingController pos9 = TextEditingController();
TextEditingController pos10 = TextEditingController();
TextEditingController pos11 = TextEditingController();
TextEditingController pos12 = TextEditingController();
TextEditingController pos13 = TextEditingController();
TextEditingController pos14 = TextEditingController();
TextEditingController pos15 = TextEditingController();
TextEditingController pos16 = TextEditingController();

TextEditingController firstDate = TextEditingController();
TextEditingController mDate = TextEditingController();
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

TextEditingController inName1 = TextEditingController();
TextEditingController inName2 = TextEditingController();
TextEditingController inName3 = TextEditingController();
TextEditingController inName4 = TextEditingController();
TextEditingController inName5 = TextEditingController();
TextEditingController inName6 = TextEditingController();
TextEditingController inName7 = TextEditingController();
TextEditingController inName8 = TextEditingController();
TextEditingController inName9 = TextEditingController();
TextEditingController inName10 = TextEditingController();
TextEditingController inName11 = TextEditingController();
TextEditingController inName12 = TextEditingController();
TextEditingController inName13 = TextEditingController();
TextEditingController inName14 = TextEditingController();
TextEditingController inName15 = TextEditingController();
TextEditingController inName16 = TextEditingController();

TextEditingController codeNo1 = TextEditingController();
TextEditingController codeNo2 = TextEditingController();
TextEditingController codeNo3 = TextEditingController();
TextEditingController codeNo4 = TextEditingController();
TextEditingController codeNo5 = TextEditingController();
TextEditingController codeNo6 = TextEditingController();
TextEditingController codeNo7 = TextEditingController();
TextEditingController codeNo8 = TextEditingController();
TextEditingController codeNo9 = TextEditingController();
TextEditingController codeNo10 = TextEditingController();
TextEditingController codeNo11 = TextEditingController();
TextEditingController codeNo12 = TextEditingController();
TextEditingController codeNo13 = TextEditingController();
TextEditingController codeNo14 = TextEditingController();
TextEditingController codeNo15 = TextEditingController();
TextEditingController codeNo16 = TextEditingController();

TextEditingController us1 = TextEditingController();
TextEditingController us2 = TextEditingController();
TextEditingController us3 = TextEditingController();
TextEditingController us4 = TextEditingController();
TextEditingController us5 = TextEditingController();
TextEditingController us6 = TextEditingController();
TextEditingController us7 = TextEditingController();
TextEditingController us8 = TextEditingController();
TextEditingController us9 = TextEditingController();
TextEditingController us10 = TextEditingController();
TextEditingController us11 = TextEditingController();
TextEditingController us12 = TextEditingController();
TextEditingController us13 = TextEditingController();
TextEditingController us14 = TextEditingController();
TextEditingController us15 = TextEditingController();
TextEditingController us16 = TextEditingController();

TextEditingController s11 = TextEditingController();
TextEditingController s12 = TextEditingController();
TextEditingController s13 = TextEditingController();
TextEditingController s14 = TextEditingController();
TextEditingController s15 = TextEditingController();
TextEditingController s16 = TextEditingController();
TextEditingController s17 = TextEditingController();
TextEditingController s18 = TextEditingController();
TextEditingController s19 = TextEditingController();
TextEditingController s110 = TextEditingController();
TextEditingController s111 = TextEditingController();
TextEditingController s112 = TextEditingController();
TextEditingController s113 = TextEditingController();
TextEditingController s114 = TextEditingController();
TextEditingController s115 = TextEditingController();
TextEditingController s116 = TextEditingController();

TextEditingController s21 = TextEditingController();
TextEditingController s22 = TextEditingController();
TextEditingController s23 = TextEditingController();
TextEditingController s24 = TextEditingController();
TextEditingController s25 = TextEditingController();
TextEditingController s26 = TextEditingController();
TextEditingController s27 = TextEditingController();
TextEditingController s28 = TextEditingController();
TextEditingController s29 = TextEditingController();
TextEditingController s210 = TextEditingController();
TextEditingController s211 = TextEditingController();
TextEditingController s212 = TextEditingController();
TextEditingController s213 = TextEditingController();
TextEditingController s214 = TextEditingController();
TextEditingController s215 = TextEditingController();
TextEditingController s216 = TextEditingController();

TextEditingController s31 = TextEditingController();
TextEditingController s32 = TextEditingController();
TextEditingController s33 = TextEditingController();
TextEditingController s34 = TextEditingController();
TextEditingController s35 = TextEditingController();
TextEditingController s36 = TextEditingController();
TextEditingController s37 = TextEditingController();
TextEditingController s38 = TextEditingController();
TextEditingController s39 = TextEditingController();
TextEditingController s310 = TextEditingController();
TextEditingController s311 = TextEditingController();
TextEditingController s312 = TextEditingController();
TextEditingController s313 = TextEditingController();
TextEditingController s314 = TextEditingController();
TextEditingController s315 = TextEditingController();
TextEditingController s316 = TextEditingController();

TextEditingController comDate = TextEditingController();
TextEditingController instructorName = TextEditingController();
TextEditingController instructorSign = TextEditingController();
TextEditingController instructorCode = TextEditingController();
TextEditingController instructorLis = TextEditingController();

TextEditingController traineeSign = TextEditingController();
TextEditingController examinerName = TextEditingController();
TextEditingController examinerSign = TextEditingController();
TextEditingController examinerCode = TextEditingController();
TextEditingController examinerLis = TextEditingController();

TextEditingController gMFT = TextEditingController();
TextEditingController lastDate = TextEditingController();

class _EvaluationScreenState extends State<EvaluationScreen> {
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector1)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f1)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type1)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos1)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date1)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName1)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo1)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector2)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f2)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type2)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos2)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date2)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName2)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo2)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector3)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f3)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type3)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos3)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date3)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName3)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo3)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector4)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f4)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type4)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos4)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date4)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName4)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo4)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector5)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f5)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type5)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos5)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date5)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName5)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo5)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector6)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f6)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type6)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos6)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date6)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName6)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo6)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector7)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f7)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type7)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos7)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date7)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName7)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo7)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector8)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f8)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type8)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos8)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date8)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName8)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo8)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector9)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f9)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type9)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos9)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date9)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName9)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo9)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector10)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f10)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type10)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos10)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date10)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName10)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo10)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector11)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f11)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type11)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos11)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date11)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName11)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo11)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector12)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f12)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type12)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos12)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date12)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName12)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo12)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector13)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f13)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type13)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos13)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date13)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName13)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo13)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector14)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f14)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type14)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos14)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date14)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName14)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo14)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector15)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f15)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type15)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos15)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date15)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName15)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo15)),
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
          SizedBox(width: 130.w, child: CustomFormField(controller: sector16)),
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
            SizedBox(width: 130.w, child: CustomFormField(controller: f16)),
          ],
        ),
      ),
    ),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: type16)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: pos16)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: date16)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: inName16)),
    Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(controller: codeNo16)),
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
              text: "Preflight emergency equipment check . location/operation",
              fontSize: 14.sp),
        ],
      ),
    ),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us1)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s11)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s21)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s31)),
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
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us2)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s12)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s22)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s32)),
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
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us3)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s13)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s23)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s33)),
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
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us4)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s14)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s24)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s34)),
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
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us5)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s15)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s25)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s35)),
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
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us6)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s16)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s26)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s36)),
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
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us7)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s17)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s27)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s37)),
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
              text: "Cockpit door . window . seat operations", fontSize: 15.sp)
        ],
      ),
    ),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us8)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s18)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s28)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s38)),
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
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: us9)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s19)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s29)),
    Padding(
        padding: EdgeInsets.all(7.sp), child: CustomFormField(controller: s39)),
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
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: us10)),
    Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: s110)),
    Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: s210)),
    Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: s310)),
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
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: us11)),
    Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: s111)),
    Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: s211)),
    Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(controller: s311)),
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
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
          height: 20.h, child: CustomFormField(controller: traineeSign)),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(height: 20.h, child: CustomFormField(controller: mDate)),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
          height: 20.h, child: CustomFormField(controller: examinerName)),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
          height: 20.h, child: CustomFormField(controller: examinerSign)),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
          height: 20.h, child: CustomFormField(controller: examinerCode)),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
          height: 20.h, child: CustomFormField(controller: examinerLis)),
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
          child:
              Container(height: 20.h, child: CustomFormField(controller: gMFT)),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Container(
              height: 20.h, child: CustomFormField(controller: lastDate)),
        ),
      ),
    ],
  );
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  bool value6 = false;
  bool value7 = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 40.h),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 1600.h,
                    width: 1285.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                                      )
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
                                        controller: codeNo,
                                      )
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
                                      Checkbox(
                                          value: value1,
                                          onChanged: (v) {
                                            setState(() {
                                              value1 = !value1;
                                            });
                                          }),
                                      CustomText(
                                        text: "Initial",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(
                                          value: value2,
                                          onChanged: (v) {
                                            setState(() {
                                              value2 = !value2;
                                            });
                                          }),
                                      CustomText(
                                        text: "Transition",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(
                                          value: value3,
                                          onChanged: (v) {
                                            setState(() {
                                              value3 = !value3;
                                            });
                                          }),
                                      CustomText(
                                        text: "Requalification Recurrent",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(
                                          value: value4,
                                          onChanged: (v) {
                                            setState(() {
                                              value4 = !value4;
                                            });
                                          }),
                                      CustomText(
                                        text: "SEP1",
                                        fontSize: 14.sp,
                                      ),
                                      Checkbox(
                                          value: value5,
                                          onChanged: (v) {
                                            setState(() {
                                              value5 = !value5;
                                            });
                                          }),
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
                                      CustomFormField(
                                        controller: firstDate,
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
                              TableRow(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 15.h),
                                    child: Row(
                                      children: [
                                        Spacer(),
                                        Checkbox(
                                            value: value6,
                                            onChanged: (v) {
                                              setState(() {
                                                value6 = !value6;
                                              });
                                            }),
                                        CustomText(
                                          text: "S",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp,
                                        ),
                                        Spacer(),
                                        Checkbox(
                                            value: value7,
                                            onChanged: (v) {
                                              setState(() {
                                                value7 = !value7;
                                              });
                                            }),
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
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                        height: 20.h,
                                        child: CustomFormField(
                                            controller: comDate)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                        height: 20.h,
                                        child: CustomFormField(
                                            controller: instructorName)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                        height: 20.h,
                                        child: CustomFormField(
                                            controller: instructorSign)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                        height: 20.h,
                                        child: CustomFormField(
                                            controller: instructorCode)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                        height: 20.h,
                                        child: CustomFormField(
                                            controller: instructorLis)),
                                  ),
                                ],
                              )
                            ]),
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
                        TextFormField(
                          controller: remarks,
                          maxLines: 3,
                          // controller: controller,
                          cursorHeight: 20.h,
                          style:
                              TextStyle(fontSize: 15.sp, color: Colors.black),
                          decoration: InputDecoration(
                            hintText: remarks.text,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Align(
                          alignment: Alignment.center,
                          child: AppButton(
                            title: 'Send',
                            width: 120,
                            height: 43,
                            onTap: () {
                              RouteUtils.pop(context: context);
                              updateAllDocumentsInCollection();
                              DocumentReference form = FirebaseFirestore
                                  .instance
                                  .collection('Form(Data)')
                                  .doc(traineeName.text);
                              form.set({
                                "Trainee Name": traineeName.text,
                                "Code Num": codeNo.text,
                                "Remarks": remarks.text,
                                "Sector 1": sector1.text,
                                "Sector 2": sector2.text,
                                "Sector 3": sector3.text,
                                "Sector 4": sector4.text,
                                "Sector 5": sector5.text,
                                "Sector 6": sector6.text,
                                "Sector 7": sector7.text,
                                "Sector 8": sector8.text,
                                "Sector 9": sector9.text,
                                "Sector 10": sector10.text,
                                "Sector 11": sector11.text,
                                "Sector 12": sector12.text,
                                "Sector 13": sector13.text,
                                "Sector 14": sector14.text,
                                "Sector 15": sector15.text,
                                "Sector 16": sector16.text,
                                "Flight No 1": f1.text,
                                "Flight No 2": f2.text,
                                "Flight No 3": f3.text,
                                "Flight No 4": f4.text,
                                "Flight No 5": f5.text,
                                "Flight No 6": f6.text,
                                "Flight No 7": f7.text,
                                "Flight No 8": f8.text,
                                "Flight No 9": f9.text,
                                "Flight No 10": f10.text,
                                "Flight No 11": f11.text,
                                "Flight No 12": f12.text,
                                "Flight No 13": f13.text,
                                "Flight No 14": f14.text,
                                "Flight No 15": f15.text,
                                "Flight No 16": f16.text,
                                "A/C Type 1": type1.text,
                                "A/C Type 2": type2.text,
                                "A/C Type 3": type3.text,
                                "A/C Type 4": type4.text,
                                "A/C Type 5": type5.text,
                                "A/C Type 6": type6.text,
                                "A/C Type 7": type7.text,
                                "A/C Type 8": type8.text,
                                "A/C Type 9": type9.text,
                                "A/C Type 10": type10.text,
                                "A/C Type 11": type11.text,
                                "A/C Type 12": type12.text,
                                "A/C Type 13": type13.text,
                                "A/C Type 14": type14.text,
                                "A/C Type 15": type15.text,
                                "A/C Type 16": type16.text,
                                "Position 1": pos1.text,
                                "Position 2": pos2.text,
                                "Position 3": pos3.text,
                                "Position 4": pos4.text,
                                "Position 5": pos5.text,
                                "Position 6": pos6.text,
                                "Position 7": pos7.text,
                                "Position 8": pos8.text,
                                "Position 9": pos9.text,
                                "Position 10": pos10.text,
                                "Position 11": pos11.text,
                                "Position 12": pos12.text,
                                "Position 13": pos13.text,
                                "Position 14": pos14.text,
                                "Position 15": pos15.text,
                                "Position 16": pos16.text,
                                "Date 1": date1.text,
                                "Date 2": date2.text,
                                "Date 3": date3.text,
                                "Date 4": date4.text,
                                "Date 5": date5.text,
                                "Date 6": date6.text,
                                "Date 7": date7.text,
                                "Date 8": date8.text,
                                "Date 9": date9.text,
                                "Date 10": date10.text,
                                "Date 11": date11.text,
                                "Date 12": date12.text,
                                "Date 13": date13.text,
                                "Date 14": date14.text,
                                "Date 15": date15.text,
                                "Date 16": date16.text,
                                "Instructor Name ": inName1.text,
                                "Code No 1": codeNo1.text,
                                "Code No 2": codeNo2.text,
                                "Code No 3": codeNo3.text,
                                "Code No 4": codeNo4.text,
                                "Code No 5": codeNo5.text,
                                "Code No 6": codeNo6.text,
                                "Code No 7": codeNo7.text,
                                "Code No 8": codeNo8.text,
                                "Code No 9": codeNo9.text,
                                "Code No 10": codeNo10.text,
                                "Code No 11": codeNo11.text,
                                "Code No 12": codeNo12.text,
                                "Code No 13": codeNo13.text,
                                "Code No 14": codeNo14.text,
                                "Code No 15": codeNo15.text,
                                "Code No 16": codeNo16.text,
                                "Us 1": us1.text,
                                "Us 2": us2.text,
                                "Us 3": us3.text,
                                "Us 4": us4.text,
                                "Us 5": us5.text,
                                "Us 6": us6.text,
                                "Us 7": us7.text,
                                "Us 8": us8.text,
                                "Us 9": us9.text,
                                "Us 10": us10.text,
                                "Us 11": us11.text,
                                "S 11": s11.text,
                                "S 12": s12.text,
                                "S 13": s13.text,
                                "S 14": s14.text,
                                "S 15": s15.text,
                                "S 16": s16.text,
                                "S 17": s17.text,
                                "S 18": s18.text,
                                "S 19": s19.text,
                                "S 110": s110.text,
                                "S 111": s111.text,
                                "S 21": s21.text,
                                "S 22": s22.text,
                                "S 23": s23.text,
                                "S 24": s24.text,
                                "S 25": s25.text,
                                "S 26": s26.text,
                                "S 27": s27.text,
                                "S 28": s28.text,
                                "S 29": s29.text,
                                "S 210": s210.text,
                                "S 211": s211.text,
                                "S 31": s31.text,
                                "S 32": s32.text,
                                "S 33": s33.text,
                                "S 34": s34.text,
                                "S 35": s35.text,
                                "S 36": s36.text,
                                "S 37": s37.text,
                                "S 38": s38.text,
                                "S 39": s39.text,
                                "S 310": s310.text,
                                "S 311": s311.text,
                                "Completion date": comDate.text,
                                "Instructor Name": instructorName.text,
                                "Instructor Signature": instructorSign.text,
                                "Instructor CodeNo": instructorCode.text,
                                "Instructor License": instructorLis.text,
                                "Trainee Signature": traineeSign.text,
                                "First Date": firstDate.text,
                                "Examiner Name": examinerName.text,
                                "Examiner Signature": examinerSign.text,
                                "Examiner CodeNo": examinerCode.text,
                                "Examiner License": examinerLis.text,
                                "M Date": mDate.text,
                                "Last Date": lastDate.text,
                                "G.M.F.T": gMFT.text,
                                "Value 1": value1,
                                "Value 2": value2,
                                "Value 3": value3,
                                "Value 4": value4,
                                "Value 5": value5,
                                "Value 6": value6,
                                "Value 7": value7,
                              });
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
      ),
    );
  }

  void updateAllDocumentsInCollection() async {
    // Replace 'Admin' with the actual name of your Firestore collection
    final CollectionReference collectionReference =
        FirebaseFirestore.instance.collection('Admin');

    WriteBatch batch = FirebaseFirestore.instance.batch();

    try {
      // Fetch all documents in the collection
      QuerySnapshot querySnapshot = await collectionReference.get();

      // Iterate through each document and update data
      querySnapshot.docs.forEach((DocumentSnapshot document) {
        // Update the data in each document as needed
        // For example, let's assume there's a field called 'field' in each document
        Map<String, dynamic> updatedData = {
          "Trainee Name": FieldValue.arrayUnion([traineeName.text]),
          "Code Num": FieldValue.arrayUnion([codeNo.text]),
        };

        // Set the updated data in the batch for each document
        batch.update(document.reference, updatedData);
      });

      // Commit the batch to update all documents
      await batch.commit();
      print('Data updated successfully in all documents');
    } catch (e) {
      print('Error updating data: $e');
    }
  }
}
