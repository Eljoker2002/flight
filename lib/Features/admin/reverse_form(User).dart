import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Features/admin/send_form_fromAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/app_color.dart';
import '../../Core/dimentions/navigator.dart';
import '../../widgets/App_button.dart';
import '../../widgets/text_form.dart';

class ReverseFormFromAdmin extends StatefulWidget {
  ReverseFormFromAdmin(
      {Key? key,
      required this.traineeName,
      required this.date,
      required this.codeNo});
  String traineeName;
  String codeNo;
  String date;

  @override
  State<ReverseFormFromAdmin> createState() => _ReverseFormFromAdminState();
}

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

class _ReverseFormFromAdminState extends State<ReverseFormFromAdmin> {
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
          SizedBox(
            width: 130.w,
            child: sector1.text == ""
                ? CustomFormField(controller: sector1)
                : CustomText(text: sector1.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f1.text == ""
                  ? CustomFormField(controller: f1)
                  : CustomText(text: f1.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type1.text == ""
          ? CustomFormField(controller: type1)
          : CustomText(text: type1.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos1.text == ""
          ? CustomFormField(controller: pos1)
          : CustomText(text: pos1.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date1.text == ""
          ? CustomFormField(controller: date1)
          : CustomText(text: date1.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName1.text == ""
          ? CustomFormField(controller: inName1)
          : CustomText(text: inName1.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo1.text == ""
          ? CustomFormField(controller: codeNo1)
          : CustomText(text: codeNo1.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector2.text == ""
                ? CustomFormField(controller: sector2)
                : CustomText(text: sector2.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f2.text == ""
                  ? CustomFormField(controller: f2)
                  : CustomText(text: f2.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type2.text == ""
          ? CustomFormField(controller: type2)
          : CustomText(text: type2.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos2.text == ""
          ? CustomFormField(controller: pos2)
          : CustomText(text: pos2.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date2.text == ""
          ? CustomFormField(controller: date2)
          : CustomText(text: date2.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName2.text == ""
          ? CustomFormField(controller: inName2)
          : CustomText(text: inName2.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo2.text == ""
          ? CustomFormField(controller: codeNo2)
          : CustomText(text: codeNo2.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector3.text == ""
                ? CustomFormField(controller: sector3)
                : CustomText(text: sector3.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f3.text == ""
                  ? CustomFormField(controller: f3)
                  : CustomText(text: f3.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type3.text == ""
          ? CustomFormField(controller: type3)
          : CustomText(text: type3.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos3.text == ""
          ? CustomFormField(controller: pos3)
          : CustomText(text: pos3.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date3.text == ""
          ? CustomFormField(controller: date3)
          : CustomText(text: date3.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName3.text == ""
          ? CustomFormField(controller: inName3)
          : CustomText(text: inName3.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo3.text == ""
          ? CustomFormField(controller: codeNo3)
          : CustomText(text: codeNo3.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector4.text == ""
                ? CustomFormField(controller: sector4)
                : CustomText(text: sector4.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f4.text == ""
                  ? CustomFormField(controller: f4)
                  : CustomText(text: f4.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type4.text == ""
          ? CustomFormField(controller: type4)
          : CustomText(text: type4.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos4.text == ""
          ? CustomFormField(controller: pos4)
          : CustomText(text: pos4.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date4.text == ""
          ? CustomFormField(controller: date4)
          : CustomText(text: date4.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName4.text == ""
          ? CustomFormField(controller: inName4)
          : CustomText(text: inName4.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo4.text == ""
          ? CustomFormField(controller: codeNo4)
          : CustomText(text: codeNo4.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector5.text == ""
                ? CustomFormField(controller: sector5)
                : CustomText(text: sector5.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f5.text == ""
                  ? CustomFormField(controller: f5)
                  : CustomText(text: f5.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type5.text == ""
          ? CustomFormField(controller: type5)
          : CustomText(text: type5.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos5.text == ""
          ? CustomFormField(controller: pos5)
          : CustomText(text: pos5.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date5.text == ""
          ? CustomFormField(controller: date5)
          : CustomText(text: date5.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName5.text == ""
          ? CustomFormField(controller: inName5)
          : CustomText(text: inName5.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo5.text == ""
          ? CustomFormField(controller: codeNo5)
          : CustomText(text: codeNo5.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector6.text == ""
                ? CustomFormField(controller: sector6)
                : CustomText(text: sector6.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f6.text == ""
                  ? CustomFormField(controller: f6)
                  : CustomText(text: f6.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type6.text == ""
          ? CustomFormField(controller: type6)
          : CustomText(text: type6.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos6.text == ""
          ? CustomFormField(controller: pos6)
          : CustomText(text: pos6.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date6.text == ""
          ? CustomFormField(controller: date6)
          : CustomText(text: date6.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName6.text == ""
          ? CustomFormField(controller: inName6)
          : CustomText(text: inName6.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo6.text == ""
          ? CustomFormField(controller: codeNo6)
          : CustomText(text: codeNo6.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector7.text == ""
                ? CustomFormField(controller: sector7)
                : CustomText(text: sector7.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f7.text == ""
                  ? CustomFormField(controller: f7)
                  : CustomText(text: f7.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type7.text == ""
          ? CustomFormField(controller: type7)
          : CustomText(text: type7.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos7.text == ""
          ? CustomFormField(controller: pos7)
          : CustomText(text: pos7.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date7.text == ""
          ? CustomFormField(controller: date7)
          : CustomText(text: date7.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName7.text == ""
          ? CustomFormField(controller: inName7)
          : CustomText(text: inName7.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo7.text == ""
          ? CustomFormField(controller: codeNo7)
          : CustomText(text: codeNo7.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector8.text == ""
                ? CustomFormField(controller: sector8)
                : CustomText(text: sector8.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f8.text == ""
                  ? CustomFormField(controller: f8)
                  : CustomText(text: f8.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type8.text == ""
          ? CustomFormField(controller: type8)
          : CustomText(text: type8.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos8.text == ""
          ? CustomFormField(controller: pos8)
          : CustomText(text: pos8.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date8.text == ""
          ? CustomFormField(controller: date8)
          : CustomText(text: date8.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName8.text == ""
          ? CustomFormField(controller: inName8)
          : CustomText(text: inName8.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo8.text == ""
          ? CustomFormField(controller: codeNo8)
          : CustomText(text: codeNo8.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector9.text == ""
                ? CustomFormField(controller: sector9)
                : CustomText(text: sector9.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f9.text == ""
                  ? CustomFormField(controller: f9)
                  : CustomText(text: f9.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type9.text == ""
          ? CustomFormField(controller: type9)
          : CustomText(text: type9.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos9.text == ""
          ? CustomFormField(controller: pos9)
          : CustomText(text: pos9.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date9.text == ""
          ? CustomFormField(controller: date9)
          : CustomText(text: date9.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName9.text == ""
          ? CustomFormField(controller: inName9)
          : CustomText(text: inName9.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo9.text == ""
          ? CustomFormField(controller: codeNo9)
          : CustomText(text: codeNo9.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector10.text == ""
                ? CustomFormField(controller: sector10)
                : CustomText(text: sector10.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f10.text == ""
                  ? CustomFormField(controller: f10)
                  : CustomText(text: f10.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type10.text == ""
          ? CustomFormField(controller: type10)
          : CustomText(text: type10.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos10.text == ""
          ? CustomFormField(controller: pos10)
          : CustomText(text: pos10.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date10.text == ""
          ? CustomFormField(controller: date10)
          : CustomText(text: date10.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName10.text == ""
          ? CustomFormField(controller: inName10)
          : CustomText(text: inName10.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo10.text == ""
          ? CustomFormField(controller: codeNo10)
          : CustomText(text: codeNo10.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector11.text == ""
                ? CustomFormField(controller: sector11)
                : CustomText(text: sector11.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f11.text == ""
                  ? CustomFormField(controller: f11)
                  : CustomText(text: f11.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type11.text == ""
          ? CustomFormField(controller: type11)
          : CustomText(text: type11.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos11.text == ""
          ? CustomFormField(controller: pos11)
          : CustomText(text: pos11.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date11.text == ""
          ? CustomFormField(controller: date11)
          : CustomText(text: date11.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName11.text == ""
          ? CustomFormField(controller: inName11)
          : CustomText(text: inName11.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo11.text == ""
          ? CustomFormField(controller: codeNo11)
          : CustomText(text: codeNo11.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector12.text == ""
                ? CustomFormField(controller: sector12)
                : CustomText(text: sector12.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f12.text == ""
                  ? CustomFormField(controller: f12)
                  : CustomText(text: f12.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type12.text == ""
          ? CustomFormField(controller: type12)
          : CustomText(text: type12.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos12.text == ""
          ? CustomFormField(controller: pos12)
          : CustomText(text: pos12.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date12.text == ""
          ? CustomFormField(controller: date12)
          : CustomText(text: date12.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName12.text == ""
          ? CustomFormField(controller: inName12)
          : CustomText(text: inName12.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo12.text == ""
          ? CustomFormField(controller: codeNo12)
          : CustomText(text: codeNo12.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector13.text == ""
                ? CustomFormField(controller: sector13)
                : CustomText(text: sector13.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f13.text == ""
                  ? CustomFormField(controller: f13)
                  : CustomText(text: f13.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type13.text == ""
          ? CustomFormField(controller: type13)
          : CustomText(text: type13.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos13.text == ""
          ? CustomFormField(controller: pos13)
          : CustomText(text: pos13.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date13.text == ""
          ? CustomFormField(controller: date13)
          : CustomText(text: date13.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName13.text == ""
          ? CustomFormField(controller: inName13)
          : CustomText(text: inName13.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo13.text == ""
          ? CustomFormField(controller: codeNo13)
          : CustomText(text: codeNo13.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector14.text == ""
                ? CustomFormField(controller: sector14)
                : CustomText(text: sector14.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f14.text == ""
                  ? CustomFormField(controller: f14)
                  : CustomText(text: f14.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type14.text == ""
          ? CustomFormField(controller: type14)
          : CustomText(text: type14.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos14.text == ""
          ? CustomFormField(controller: pos14)
          : CustomText(text: pos14.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date14.text == ""
          ? CustomFormField(controller: date14)
          : CustomText(text: date14.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName14.text == ""
          ? CustomFormField(controller: inName14)
          : CustomText(text: inName14.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo14.text == ""
          ? CustomFormField(controller: codeNo14)
          : CustomText(text: codeNo14.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector15.text == ""
                ? CustomFormField(controller: sector15)
                : CustomText(text: sector15.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f15.text == ""
                  ? CustomFormField(controller: f15)
                  : CustomText(text: f15.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type15.text == ""
          ? CustomFormField(controller: type15)
          : CustomText(text: type15.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos15.text == ""
          ? CustomFormField(controller: pos15)
          : CustomText(text: pos15.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date15.text == ""
          ? CustomFormField(controller: date15)
          : CustomText(text: date15.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName15.text == ""
          ? CustomFormField(controller: inName15)
          : CustomText(text: inName15.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo15.text == ""
          ? CustomFormField(controller: codeNo15)
          : CustomText(text: codeNo15.text, fontSize: 15.sp),
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
          SizedBox(
            width: 130.w,
            child: sector16.text == ""
                ? CustomFormField(controller: sector16)
                : CustomText(text: sector16.text, fontSize: 15.sp),
          ),
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
            SizedBox(
              width: 130.w,
              child: f16.text == ""
                  ? CustomFormField(controller: f16)
                  : CustomText(text: f16.text, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: type16.text == ""
          ? CustomFormField(controller: type16)
          : CustomText(text: type16.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: pos16.text == ""
          ? CustomFormField(controller: pos16)
          : CustomText(text: pos16.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: date16.text == ""
          ? CustomFormField(controller: date16)
          : CustomText(text: date16.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: inName16.text == ""
          ? CustomFormField(controller: inName16)
          : CustomText(text: inName16.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(10.sp),
      child: codeNo16.text == ""
          ? CustomFormField(controller: codeNo16)
          : CustomText(text: codeNo16.text, fontSize: 15.sp),
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
              text: "Preflight emergency equipment check . location/operation",
              fontSize: 14.sp),
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: us1.text == ""
          ? CustomFormField(controller: us1)
          : CustomText(text: us1.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s11.text == ""
          ? CustomFormField(controller: s11)
          : CustomText(text: s11.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s21.text == ""
          ? CustomFormField(controller: s21)
          : CustomText(text: s21.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s31.text == ""
          ? CustomFormField(controller: s31)
          : CustomText(text: s31.text, fontSize: 15.sp),
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
      child: us2.text == ""
          ? CustomFormField(controller: us2)
          : CustomText(text: us2.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s12.text == ""
          ? CustomFormField(controller: s12)
          : CustomText(text: s12.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s22.text == ""
          ? CustomFormField(controller: s22)
          : CustomText(text: s22.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s32.text == ""
          ? CustomFormField(controller: s32)
          : CustomText(text: s32.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us3.text == ""
          ? CustomFormField(controller: us3)
          : CustomText(text: us3.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s13.text == ""
          ? CustomFormField(controller: s13)
          : CustomText(text: s13.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s23.text == ""
          ? CustomFormField(controller: s23)
          : CustomText(text: s23.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s33.text == ""
          ? CustomFormField(controller: s33)
          : CustomText(text: s33.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us4.text == ""
          ? CustomFormField(controller: us4)
          : CustomText(text: us4.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s14.text == ""
          ? CustomFormField(controller: s14)
          : CustomText(text: s14.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s24.text == ""
          ? CustomFormField(controller: s24)
          : CustomText(text: s24.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s34.text == ""
          ? CustomFormField(controller: s34)
          : CustomText(text: s34.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us5.text == ""
          ? CustomFormField(controller: us5)
          : CustomText(text: us5.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s15.text == ""
          ? CustomFormField(controller: s15)
          : CustomText(text: s15.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s25.text == ""
          ? CustomFormField(controller: s25)
          : CustomText(text: s25.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s35.text == ""
          ? CustomFormField(controller: s35)
          : CustomText(text: s35.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us6.text == ""
          ? CustomFormField(controller: us6)
          : CustomText(text: us6.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s16.text == ""
          ? CustomFormField(controller: s16)
          : CustomText(text: s16.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s26.text == ""
          ? CustomFormField(controller: s26)
          : CustomText(text: s26.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s36.text == ""
          ? CustomFormField(controller: s36)
          : CustomText(text: s36.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us7.text == ""
          ? CustomFormField(controller: us7)
          : CustomText(text: us7.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s17.text == ""
          ? CustomFormField(controller: s17)
          : CustomText(text: s17.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s27.text == ""
          ? CustomFormField(controller: s27)
          : CustomText(text: s27.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s37.text == ""
          ? CustomFormField(controller: s37)
          : CustomText(text: s37.text, fontSize: 15.sp),
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
              text: "Cockpit door . window . seat operations", fontSize: 15.sp)
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: us8.text == ""
          ? CustomFormField(controller: us8)
          : CustomText(text: us8.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s18.text == ""
          ? CustomFormField(controller: s18)
          : CustomText(text: s18.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s28.text == ""
          ? CustomFormField(controller: s28)
          : CustomText(text: s28.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s38.text == ""
          ? CustomFormField(controller: s38)
          : CustomText(text: s38.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us9.text == ""
          ? CustomFormField(controller: us9)
          : CustomText(text: us9.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s19.text == ""
          ? CustomFormField(controller: s19)
          : CustomText(text: s19.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s29.text == ""
          ? CustomFormField(controller: s29)
          : CustomText(text: s29.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s39.text == ""
          ? CustomFormField(controller: s39)
          : CustomText(text: s39.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us10.text == ""
          ? CustomFormField(controller: us10)
          : CustomText(text: us10.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s110.text == ""
          ? CustomFormField(controller: s110)
          : CustomText(text: s110.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s210.text == ""
          ? CustomFormField(controller: s210)
          : CustomText(text: s210.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s310.text == ""
          ? CustomFormField(controller: s310)
          : CustomText(text: s310.text, fontSize: 15.sp),
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
      padding: EdgeInsets.all(7.sp),
      child: us11.text == ""
          ? CustomFormField(controller: us11)
          : CustomText(text: us11.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s111.text == ""
          ? CustomFormField(controller: s111)
          : CustomText(text: s111.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s211.text == ""
          ? CustomFormField(controller: s211)
          : CustomText(text: s211.text, fontSize: 15.sp),
    ),
    Padding(
      padding: EdgeInsets.all(7.sp),
      child: s311.text == ""
          ? CustomFormField(controller: s311)
          : CustomText(text: s311.text, fontSize: 15.sp),
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
            onChanged: (v) {},
          ),
          CustomText(
            text: "S",
            fontWeight: FontWeight.bold,
            fontSize: 20.sp,
          ),
          Spacer(),
          Checkbox(
            value: false,
            onChanged: (v) {},
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
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: comDate.text == ""
            ? CustomFormField(controller: comDate)
            : CustomText(text: comDate.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: instructorName.text == ""
            ? CustomFormField(controller: instructorName)
            : CustomText(text: instructorName.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: instructorSign.text == ""
            ? CustomFormField(controller: instructorSign)
            : CustomText(text: instructorSign.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: instructorCode.text == ""
            ? CustomFormField(controller: instructorCode)
            : CustomText(text: instructorCode.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: instructorLis.text == ""
            ? CustomFormField(controller: instructorLis)
            : CustomText(text: instructorLis.text, fontSize: 15.sp),
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
        height: 20.h,
        child: traineeSign.text == ""
            ? CustomFormField(controller: traineeSign)
            : CustomText(text: traineeSign.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: mDate.text == ""
            ? CustomFormField(controller: mDate)
            : CustomText(text: mDate.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: examinerName.text == ""
            ? CustomFormField(controller: examinerName)
            : CustomText(text: examinerName.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: examinerSign.text == ""
            ? CustomFormField(controller: examinerSign)
            : CustomText(text: examinerSign.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: examinerCode.text == ""
            ? CustomFormField(controller: examinerCode)
            : CustomText(text: examinerCode.text, fontSize: 15.sp),
      ),
    ),
    Padding(
      padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
      child: Container(
        height: 20.h,
        child: examinerLis.text == ""
            ? CustomFormField(controller: examinerLis)
            : CustomText(text: examinerLis.text, fontSize: 15.sp),
      ),
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
          child: Container(
            height: 20.h,
            child: gMFT.text == ""
                ? CustomFormField(controller: gMFT)
                : CustomText(text: gMFT.text, fontSize: 15.sp),
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Container(
            height: 20.h,
            child: lastDate.text == ""
                ? CustomFormField(controller: lastDate)
                : CustomText(text: lastDate.text, fontSize: 15.sp),
          ),
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
                    height: 1480.h,
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
                                      widget.traineeName == ""
                                          ? CustomFormField(
                                              // controller: traineeName,
                                              )
                                          : CustomText(
                                              text: widget.traineeName,
                                              fontSize: 20.sp,
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
                                      widget.codeNo == ""
                                          ? CustomFormField(
                                              // controller: traineeName,
                                              )
                                          : CustomText(
                                              text: widget.codeNo,
                                              fontSize: 20.sp,
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
                                      value1.toString() == "true"
                                          ? Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 9.w),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.sp),
                                                ),
                                                width: 17.sp,
                                                height: 17.sp,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 16.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Checkbox(
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
                                      value2 == "true"
                                          ? Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.w),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.sp),
                                                ),
                                                width: 17.sp,
                                                height: 17.sp,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 16.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Checkbox(
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
                                      value3 == "true"
                                          ? Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.w),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.sp),
                                                ),
                                                width: 17.sp,
                                                height: 17.sp,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 16.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Checkbox(
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
                                      value4 == "true"
                                          ? Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.w),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.sp),
                                                ),
                                                width: 17.sp,
                                                height: 17.sp,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 16.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Checkbox(
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
                                      value5 == "true"
                                          ? Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 11.w),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.deepPurple,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          2.sp),
                                                ),
                                                width: 17.sp,
                                                height: 17.sp,
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Icon(
                                                    Icons.check,
                                                    size: 16.sp,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Checkbox(
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
                                      firstDate.text == ""
                                          ? CustomFormField(
                                              controller: firstDate,
                                            )
                                          : CustomText(
                                              text: firstDate.text,
                                              fontSize: 20.sp,
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
                                          value: false,
                                          onChanged: (v) {},
                                        ),
                                        CustomText(
                                          text: "S",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.sp,
                                        ),
                                        Spacer(),
                                        Checkbox(
                                          value: false,
                                          onChanged: (v) {},
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
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                      height: 20.h,
                                      child: comDate.text == ""
                                          ? CustomFormField(controller: comDate)
                                          : CustomText(
                                              text: comDate.text,
                                              fontSize: 15.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                      height: 20.h,
                                      child: instructorName.text == ""
                                          ? CustomFormField(
                                              controller: instructorName)
                                          : CustomText(
                                              text: instructorName.text,
                                              fontSize: 15.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                      height: 20.h,
                                      child: instructorSign.text == ""
                                          ? CustomFormField(
                                              controller: instructorSign)
                                          : CustomText(
                                              text: instructorSign.text,
                                              fontSize: 15.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                      height: 20.h,
                                      child: instructorCode.text == ""
                                          ? CustomFormField(
                                              controller: instructorCode)
                                          : CustomText(
                                              text: instructorCode.text,
                                              fontSize: 15.sp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 20.h, horizontal: 10.w),
                                    child: Container(
                                      height: 20.h,
                                      child: instructorLis.text == ""
                                          ? CustomFormField(
                                              controller: instructorLis)
                                          : CustomText(
                                              text: instructorLis.text,
                                              fontSize: 15.sp),
                                    ),
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
                        Align(
                          alignment: Alignment.center,
                          child: AppButton(
                            title: 'Send',
                            width: 120,
                            height: 43,
                            onTap: () {
                              RouteUtils.pop(context: context);
                              DocumentReference form = FirebaseFirestore
                                  .instance
                                  .collection('Form(Data)')
                                  .doc(widget.traineeName);
                              form.set({
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
                                "Instructor Name 1": inName1.text,
                                "Instructor Name 2": inName2.text,
                                "Instructor Name 3": inName3.text,
                                "Instructor Name 4": inName4.text,
                                "Instructor Name 5": inName5.text,
                                "Instructor Name 6": inName6.text,
                                "Instructor Name 7": inName7.text,
                                "Instructor Name 8": inName8.text,
                                "Instructor Name 9": inName9.text,
                                "Instructor Name 10": inName10.text,
                                "Instructor Name 11": inName11.text,
                                "Instructor Name 12": inName12.text,
                                "Instructor Name 13": inName13.text,
                                "Instructor Name 14": inName14.text,
                                "Instructor Name 15": inName15.text,
                                "Instructor Name 16": inName16.text,
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
                                "Value 1": value1.toString(),
                                "Value 2": value2.toString(),
                                "Value 3": value3.toString(),
                                "Value 4": value4.toString(),
                                "Value 5": value5.toString(),
                              });
                              // DocumentReference form2 = FirebaseFirestore
                              //     .instance
                              //     .collection('Users')
                              //     .doc(instructorID1.text);
                              // form2.update({
                              //   "Trainee Name":
                              //       FieldValue.arrayUnion([traineeName.text]),
                              //   "Code Num":
                              //       FieldValue.arrayUnion([codeNum.text]),
                              //   //"Date": date1.text,
                              //   "Date": FieldValue.arrayUnion([date1.text]),
                              // });
                              // DocumentReference form3 = FirebaseFirestore
                              //     .instance
                              //     .collection('Users')
                              //     .doc(instructorID2.text);
                              // form3.update({
                              //   "Trainee Name":
                              //       FieldValue.arrayUnion([traineeName.text]),
                              //   "Code Num":
                              //       FieldValue.arrayUnion([codeNum.text]),
                              //   //"Date": date2.text,
                              //   "Date": FieldValue.arrayUnion([date2.text]),
                              // });
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
      ),
    );
  }
}
// Text('${traineeName}'),
// Text('${date}'),
