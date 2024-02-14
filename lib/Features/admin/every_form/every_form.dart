import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Features/admin/send_form_fromAdmin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';

import 'package:printing/printing.dart';
import '../../../Core/dimentions/navigator.dart';
import '../../../widgets/App_button.dart';
import '../../../widgets/text_form.dart';
import 'package:pdf/widgets.dart' as pw;

class SeeAndPrintForm extends StatefulWidget {
  SeeAndPrintForm({Key? key, required this.traineeName, required this.codeNo});
  String traineeName;
  String codeNo;

  @override
  State<SeeAndPrintForm> createState() => _SeeAndPrintFormState();
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
TextEditingController firstDate = TextEditingController();
TextEditingController mDate = TextEditingController();

bool value1 = false;
bool value2 = false;
bool value3 = false;
bool value4 = false;
bool value5 = false;
bool value6 = false;
bool value7 = false;

class _SeeAndPrintFormState extends State<SeeAndPrintForm> {
  late pw.TableRow pw_tableColumn1;
  late pw.TableRow pw_tableColumn2;
  late pw.TableRow pw_tableColumn3;
  late pw.TableRow pw_tableColumn4;
  late pw.TableRow pw_tableColumn5;
  late pw.TableRow pw_tableColumn6;
  late pw.TableRow pw_tableColumn7;
  late pw.TableRow pw_tableColumn8;
  late pw.TableRow pw_tableColumn9;
  late pw.TableRow pw_tableColumn10;
  late pw.TableRow pw_tableColumn11;
  late pw.TableRow pw_tableColumn12;
  late pw.TableRow pw_tableColumn13;
  late pw.TableRow pw_tableColumn14;
  late pw.TableRow pw_tableColumn15;
  late pw.TableRow pw_tableColumn17;
  late pw.TableRow pw_tableColumn18;
  late pw.TableRow pw_tableColumn19;
  late pw.TableRow pw_tableColumn20;
  late pw.TableRow pw_tableColumn31;
  late pw.TableRow pw_tableColumn32;
  late pw.TableRow pw_tableColumn33;
  late pw.TableRow pw_tableColumn34;
  late pw.TableRow pw_tableColumn35;
  late pw.TableRow pw_tableColumn36;
  late pw.TableRow pw_tableColumn37;
  late pw.TableRow pw_tableColumn38;
  late pw.TableRow pw_tableColumn39;
  late pw.TableRow pw_tableColumn310;
  late pw.TableRow pw_tableColumn311;
  late pw.TableRow pw_tableColumn312;
  late pw.TableRow pw_tableColumn313;
  late pw.TableRow pw_tableColumn314;
  late pw.TableRow pw_tableColumn315;
  @override
  void initState() {
    getData();
    pw_tableColumn2 = pw.TableRow(children: <pw.Widget>[
      pw.Container(
        height: 20.h,
        child: pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.all(5.sp),
            child: pw.Text(
              "Sectors",
            ),
          ),
        ),
      ),
      pw.Container(
        height: 20.h,
        child: pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.all(5.sp),
            child: pw.Text(
              "Flight No",
            ),
          ),
        ),
      ),
      pw.Container(
        height: 20.h,
        child: pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.all(5.sp),
            child: pw.Text(
              "A/C Type",
            ),
          ),
        ),
      ),
      pw.Container(
        height: 20.h,
        child: pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.all(5.sp),
            child: pw.Text(
              "Position",
            ),
          ),
        ),
      ),
      pw.Container(
        height: 20.h,
        child: pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.all(5.sp),
            child: pw.Text(
              "Date",
            ),
          ),
        ),
      ),
      pw.Container(
        height: 20.h,
        child: pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.all(5.sp),
            child: pw.Text(
              "Instructor Name",
            ),
          ),
        ),
      ),
      pw.Container(
        height: 20.h,
        child: pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.all(5.sp),
            child: pw.Text(
              "Code No",
            ),
          ),
        ),
      ),
    ]);

    pw_tableColumn3 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "1-",
            ),
            pw.Text("${sector1.text}", style: pw.TextStyle(fontSize: 8.sp)),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f1.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type1.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos1.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date1.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName1.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo1.text}"),
      ),
    ]);

    pw_tableColumn31 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "2-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector2.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f2.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type2.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos2.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date2.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName2.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo2.text}"),
      ),
    ]);

    pw_tableColumn32 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "3-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector3.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f3.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type3.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos3.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date3.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName3.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo3.text}"),
      ),
    ]);

    pw_tableColumn33 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "4-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector4.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f4.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text(
          "${type4.text}",
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos4.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date4.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName4.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo4.text}"),
      ),
    ]);

    pw_tableColumn34 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "5-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector5.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f5.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type5.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos5.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date5.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName5.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo5.text}"),
      ),
    ]);

    pw_tableColumn35 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "6-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector6.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f6.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type6.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos6.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date6.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName6.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo6.text}"),
      ),
    ]);

    pw_tableColumn36 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "7-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector7.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f7.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type7.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos7.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date7.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName7.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo7.text}"),
      ),
    ]);

    pw_tableColumn37 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "8-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector8.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f8.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type8.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos8.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date8.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName8.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo8.text}"),
      ),
    ]);

    pw_tableColumn38 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "9-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector9.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f9.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type9.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos9.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date9.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName9.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo9.text}"),
      ),
    ]);

    pw_tableColumn39 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "10-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector10.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f10.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type10.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos10.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date10.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName10.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo10.text}"),
      ),
    ]);

    pw_tableColumn310 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "11-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector11.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f11.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type11.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos11.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date11.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName11.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo11.text}"),
      ),
    ]);

    pw_tableColumn311 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "12-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector12.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f12.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type12.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos12.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date12.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName12.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo12.text}"),
      ),
    ]);

    pw_tableColumn312 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "13-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector13.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f13.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type13.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos13.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date13.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName13.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo13.text}"),
      ),
    ]);

    pw_tableColumn313 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "14-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector14.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f14.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type14.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos14.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date14.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName14.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo14.text}"),
      ),
    ]);

    pw_tableColumn314 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "15-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector15.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f15.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type15.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos15.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date15.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName15.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo15.text}"),
      ),
    ]);

    pw_tableColumn315 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "16-",
            ),
            pw.SizedBox(width: 4.w),
            pw.SizedBox(
              width: 130.w,
              child: pw.Text("${sector16.text}"),
            ),
          ],
        ),
      ),
      pw.Align(
        alignment: pw.Alignment.centerLeft,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: pw.Row(
            children: [
              pw.Text(
                "MS",
              ),
              pw.SizedBox(width: 4.w),
              pw.SizedBox(
                width: 130.w,
                child: pw.Text("${f16.text}"),
              ),
            ],
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${type16.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${pos16.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${date16.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${inName16.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(10.sp),
        child: pw.Text("${codeNo16.text}"),
      ),
    ]);

    pw_tableColumn1 = pw.TableRow(children: <pw.Widget>[
      pw.Container(
        height: 15.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.all(4.sp),
          child: pw.Center(
            child: pw.Text("INFLIGHT COMPETENCY CHECK ITEMS",
                style: pw.TextStyle(fontSize: 10.sp)),
          ),
        ),
      ),
      pw.Container(
        height: 15.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.all(4.sp),
          child: pw.Center(
            child: pw.Text("US", style: pw.TextStyle(fontSize: 8.sp)),
          ),
        ),
      ),
      pw.Container(
        height: 15.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.all(4.sp),
          child: pw.Center(
            child: pw.Text("S1", style: pw.TextStyle(fontSize: 8.sp)),
          ),
        ),
      ),
      pw.Container(
        height: 15.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.all(4.sp),
          child: pw.Center(
            child: pw.Text("S2", style: pw.TextStyle(fontSize: 8.sp)),
          ),
        ),
      ),
      pw.Container(
        height: 15.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.all(4.sp),
          child: pw.Center(
            child: pw.Text("S3", style: pw.TextStyle(fontSize: 8.sp)),
          ),
        ),
      ),
    ]);

    pw_tableColumn4 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "1-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text("Preflight emergency equipment check . location/operation",
                style: pw.TextStyle(fontSize: 5.sp))
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us1.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s11.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s21.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s31.text}"),
      ),
    ]);

    pw_tableColumn5 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text("2-"),
            pw.SizedBox(width: 4.w),
            pw.Text(
              "Exit operation",
            )
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us2.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s12.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s22.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s32.text}"),
      ),
    ]);

    pw_tableColumn6 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "3-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text(
              "Galley. electrical equipment and Circuit breakers",
            )
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us3.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s13.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s23.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s33.text}"),
      ),
    ]);

    pw_tableColumn7 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "4-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text(
              "Intercommunication",
            )
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us4.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s14.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s24.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s34.text}"),
      ),
    ]);

    pw_tableColumn8 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "5-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text(
              "Crew resource management & GSOP",
            ),
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us5.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s15.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s25.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s35.text}"),
      ),
    ]);

    pw_tableColumn9 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "6-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text("Control Panels"),
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us6.text}"),
      ),
      pw.Padding(
          padding: pw.EdgeInsets.all(7.sp), child: pw.Text("${s16.text}")),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s26.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s36.text}"),
      ),
    ]);

    pw_tableColumn10 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "7-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text(
              "Passenger handling (disruptive passenger awareness)",
            )
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us7.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s17.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s27.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s37.text}"),
      ),
    ]);

    pw_tableColumn11 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "8-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text(
              "Cockpit door . window . seat operations",
            )
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us8.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s18.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s28.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s38.text}"),
      ),
    ]);

    pw_tableColumn12 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "9-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text("First aid")
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us9.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s19.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s29.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s39.text}"),
      ),
    ]);

    pw_tableColumn13 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.only(left: 5.0.sp, bottom: 5.sp, top: 5.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "10-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text("Dangerous goods awareness"),
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us10.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s110.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s210.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s310.text}"),
      ),
    ]);

    pw_tableColumn14 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.all(5.0.sp),
        child: pw.Row(
          children: [
            pw.Text(
              "11-",
            ),
            pw.SizedBox(width: 4.w),
            pw.Text("Drills")
          ],
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${us11.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s111.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(7.sp),
        child: pw.Text("${s211.text}"),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.all(8.sp),
        child: pw.Text("${s311.text}"),
      ),
    ]);

    pw_tableColumn15 = pw.TableRow(children: <pw.Widget>[
      pw.Container(
        height: 25.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(horizontal: 4.w, vertical: 22.h),
          child: pw.Center(
            child: pw.Text(
              "First Result",
              style: pw.TextStyle(fontSize: 9.sp),
            ),
          ),
        ),
      ),
      pw.Container(
        height: 25.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 22.h),
          child: pw.Center(
            child: pw.Text(
              '''Completion
     date''',
              style: pw.TextStyle(fontSize: 9.sp),
            ),
          ),
        ),
      ),
      pw.Container(
        height: 25.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 22.h),
          child: pw.Center(
            child: pw.Text(
              ''' Instructor
   Name''',
              style: pw.TextStyle(fontSize: 9.sp),
            ),
          ),
        ),
      ),
      pw.Container(
        height: 25.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 22.h),
          child: pw.Center(
            child: pw.Text(
              ''' Instructor
 signature''',
              style: pw.TextStyle(fontSize: 9.sp),
            ),
          ),
        ),
      ),
      pw.Container(
        height: 25.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 22.h),
          child: pw.Center(
            child: pw.Text(
              ''' Instructor
 Code No''',
              style: pw.TextStyle(fontSize: 9.sp),
            ),
          ),
        ),
      ),
      pw.Container(
        height: 25.h,
        child: pw.Padding(
          padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 22.h),
          child: pw.Center(
            child: pw.Text(
              ''' Instructor
   license''',
              style: pw.TextStyle(fontSize: 9.sp),
            ),
          ),
        ),
      ),
    ]);

    pw_tableColumn17 = pw.TableRow(
      children: <pw.Widget>[
        pw.Container(
          height: 25.h,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: pw.Center(
              child: pw.Text(
                '''  Trainee
 Signature''',
                style: pw.TextStyle(fontSize: 9.sp),
              ),
            ),
          ),
        ),
        pw.Container(
          height: 25.h,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: pw.Center(
              child: pw.Text(
                "Date",
                style: pw.TextStyle(fontSize: 9.sp),
              ),
            ),
          ),
        ),
        pw.Container(
          height: 25.h,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: pw.Center(
              child: pw.Text(
                ''' Examiner
   Name''',
                style: pw.TextStyle(fontSize: 9.sp),
              ),
            ),
          ),
        ),
        pw.Container(
          height: 25.h,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: pw.Center(
              child: pw.Text(
                ''' Examiner
 Signature''',
                style: pw.TextStyle(fontSize: 9.sp),
              ),
            ),
          ),
        ),
        pw.Container(
          height: 25.h,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: pw.Center(
              child: pw.Text(
                ''' Examiner
 Code No''',
                style: pw.TextStyle(fontSize: 9.sp),
              ),
            ),
          ),
        ),
        pw.Container(
          height: 25.h,
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: pw.Center(
              child: pw.Text(
                ''' Examiner
  License''',
                style: pw.TextStyle(fontSize: 9.sp),
              ),
            ),
          ),
        ),
      ],
    );

    pw_tableColumn18 = pw.TableRow(children: <pw.Widget>[
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: pw.Container(
          height: 20.h,
          child: pw.Text(
            "${traineeSign.text}",
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: pw.Container(
          height: 20.h,
          child: pw.Text(
            "${mDate.text}",
          ),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: pw.Container(
          height: 20.h,
          child: pw.Text("${examinerName.text}"),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: pw.Container(
          height: 20.h,
          child: pw.Text("${examinerSign.text}"),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: pw.Container(
          height: 20.h,
          child: pw.Text("${examinerCode.text}"),
        ),
      ),
      pw.Padding(
        padding: pw.EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: pw.Container(
          height: 20.h,
          child: pw.Text("${examinerLis.text}"),
        ),
      ),
    ]);

    pw_tableColumn19 = pw.TableRow(
      children: <pw.Widget>[
        pw.Container(
          height: 20.h,
          child: pw.Center(
            child: pw.Padding(
              padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
              child: pw.Text(
                "G.M.F.T       Signature",
              ),
            ),
          ),
        ),
        pw.Container(
          height: 20.h,
          child: pw.Center(
            child: pw.Padding(
              padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
              child: pw.Text(
                "Date",
              ),
            ),
          ),
        ),
      ],
    );

    pw_tableColumn20 = pw.TableRow(
      children: <pw.Widget>[
        pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
            child: pw.Container(
              child: pw.Container(
                height: 20.h,
                child: pw.Text("${gMFT.text}",
                    style: pw.TextStyle(fontSize: 9.sp)),
              ),
            ),
          ),
        ),
        pw.Center(
          child: pw.Padding(
            padding: pw.EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
            child: pw.Container(
              height: 20.h,
              child: pw.Text("${lastDate.text}",
                  style: pw.TextStyle(fontSize: 9.sp)),
            ),
          ),
        ),
      ],
    );
    super.initState();
  }

  Future<void> _printPdf() async {
    final pdf = pw.Document();

    pdf.addPage(pw.Page(
      build: (context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Row(
              children: [
                pw.Column(
                  children: [],
                ),
              ],
            ),
            pw.Table(
              // defaultColumnWidth: pw.FixedColumnWidth(),
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw.TableRow(children: [
                  pw.Container(
                    // width: 1285.w,
                    height: 15.h,
                    child: pw.Center(
                      child: pw.Text(
                        "CABIN CREW INFLIGHT COMPETENCY CHECK",
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            pw.Table(
              // defaultColumnWidth: pw.FixedColumnWidth(643.w),
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw.TableRow(
                  children: [
                    pw.Container(
                      // color: Colors.cyanAccent,
                      width: 321.5.w,
                      height: 20.h,
                      child: pw.Row(
                        children: [
                          pw.SizedBox(width: 2.w),
                          pw.Text(
                            "Trainee Name:",
                          ),
                          pw.Text(
                            widget.traineeName,
                          ),
                        ],
                      ),
                    ),
                    pw.Container(
                      // color: Colors.cyanAccent,
                      width: 321.5.w,
                      height: 20.h,
                      child: pw.Row(
                        children: [
                          pw.SizedBox(width: 2.w),
                          pw.Text(
                            "Code Num:",
                          ),
                          pw.Text(
                            widget.codeNo,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            pw.Table(
                columnWidths: {
                  0: pw.FlexColumnWidth(4),
                  1: pw.FlexColumnWidth(1),
                },
                //defaultColumnWidth: pw.FixedColumnWidth(1285.w),
                border: pw.TableBorder.all(width: 1.w),
                children: <pw.TableRow>[
                  pw.TableRow(children: [
                    pw.Container(
                      height: 15.h,
                      child: pw.Row(
                        children: [
                          pw.SizedBox(width: 2.w),
                          pw.Text(
                            "Training Categories:",
                            style: pw.TextStyle(fontSize: 6.sp),
                          ),
                          value1.toString() == "true"
                              ? pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                          color: PdfColor.fromInt(0xFFFFFFFF),
                                          width: 8.w,
                                          height: 8.w,
                                          child: pw.Padding(
                                            padding: pw.EdgeInsets.all(1.sp),
                                            child: pw.Container(
                                              width: 6.w,
                                              height: 6.w,
                                              color:
                                                  PdfColor.fromInt(0xFF000000),
                                            ),
                                          )),
                                    ),
                                  ),
                                )
                              : pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.sp,
                                    height: 9.sp,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                        color: PdfColor.fromInt(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                          pw.Text(
                            "Initial",
                            style: pw.TextStyle(fontSize: 6.sp),
                          ),
                          value2.toString() == "true"
                              ? pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                          color: PdfColor.fromInt(0xFFFFFFFF),
                                          width: 8.w,
                                          height: 8.w,
                                          child: pw.Padding(
                                            padding: pw.EdgeInsets.all(1.sp),
                                            child: pw.Container(
                                              width: 6.w,
                                              height: 6.w,
                                              color:
                                                  PdfColor.fromInt(0xFF000000),
                                            ),
                                          )),
                                    ),
                                  ),
                                )
                              : pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                        color: PdfColor.fromInt(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                          pw.Text(
                            "Transition",
                            style: pw.TextStyle(fontSize: 7.sp),
                          ),
                          value3.toString() == "true"
                              ? pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                          color: PdfColor.fromInt(0xFFFFFFFF),
                                          width: 8.w,
                                          height: 8.w,
                                          child: pw.Padding(
                                            padding: pw.EdgeInsets.all(1.sp),
                                            child: pw.Container(
                                              width: 6.w,
                                              height: 6.w,
                                              color:
                                                  PdfColor.fromInt(0xFF000000),
                                            ),
                                          )),
                                    ),
                                  ),
                                )
                              : pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                        color: PdfColor.fromInt(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                          pw.Text(
                            "Requalification Recurrent",
                            style: pw.TextStyle(fontSize: 7.sp),
                          ),
                          value4.toString() == "true"
                              ? pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                          color: PdfColor.fromInt(0xFFFFFFFF),
                                          width: 8.w,
                                          height: 8.w,
                                          child: pw.Padding(
                                            padding: pw.EdgeInsets.all(1.sp),
                                            child: pw.Container(
                                              width: 6.w,
                                              height: 6.w,
                                              color:
                                                  PdfColor.fromInt(0xFF000000),
                                            ),
                                          )),
                                    ),
                                  ),
                                )
                              : pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                        color: PdfColor.fromInt(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                          pw.Text(
                            "SEP1",
                            style: pw.TextStyle(fontSize: 7.sp),
                          ),
                          value5.toString() == "true"
                              ? pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                          color: PdfColor.fromInt(0xFFFFFFFF),
                                          width: 8.w,
                                          height: 8.w,
                                          child: pw.Padding(
                                            padding: pw.EdgeInsets.all(1.sp),
                                            child: pw.Container(
                                              width: 6.w,
                                              height: 6.w,
                                              color:
                                                  PdfColor.fromInt(0xFF000000),
                                            ),
                                          )),
                                    ),
                                  ),
                                )
                              : pw.Padding(
                                  padding:
                                      pw.EdgeInsets.symmetric(horizontal: 2.w),
                                  child: pw.Container(
                                    decoration: pw.BoxDecoration(
                                      color: PdfColor.fromInt(0xFF000000),
                                      borderRadius:
                                          pw.BorderRadius.circular(2.sp),
                                    ),
                                    width: 9.w,
                                    height: 9.w,
                                    child: pw.Padding(
                                      padding: pw.EdgeInsets.all(1.sp),
                                      child: pw.Container(
                                        color: PdfColor.fromInt(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                          pw.Text(
                            "SEP 2",
                            style: pw.TextStyle(fontSize: 7.sp),
                          ),
                        ],
                      ),
                    ),
                    pw.Container(
                      height: 15.h,
                      child: pw.Row(
                        children: [
                          pw.SizedBox(width: 2.w),
                          pw.Text("Date:", style: pw.TextStyle(fontSize: 7.sp)),
                          pw.SizedBox(width: 4.w),
                          pw.Text(
                            "${firstDate.text}",
                          ),
                        ],
                      ),
                    )
                  ])
                ]),
            pw.Table(
                columnWidths: {
                  0: pw.FlexColumnWidth(1),
                  1: pw.FlexColumnWidth(1),
                  2: pw.FlexColumnWidth(1),
                  3: pw.FlexColumnWidth(1),
                  4: pw.FlexColumnWidth(1),
                  5: pw.FlexColumnWidth(1.5),
                  6: pw.FlexColumnWidth(1),
                },
                border: pw.TableBorder.all(width: 1.w),
                children: <pw.TableRow>[
                  pw_tableColumn2,
                ]),
            pw.Table(
              columnWidths: {
                0: pw.FlexColumnWidth(1),
                1: pw.FlexColumnWidth(1),
                2: pw.FlexColumnWidth(1),
                3: pw.FlexColumnWidth(1),
                4: pw.FlexColumnWidth(1),
                5: pw.FlexColumnWidth(1.5),
                6: pw.FlexColumnWidth(1),
              },
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "1-",
                          ),
                          pw.Text("${sector1.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f1.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type1.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos1.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date1.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName1.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo1.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "2-",
                          ),
                          pw.Text("${sector2.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f2.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type2.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos2.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date2.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName2.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo2.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "3-",
                          ),
                          pw.Text("${sector3.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f3.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type3.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos3.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date3.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName3.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo3.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "4-",
                          ),
                          pw.Text("${sector4.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f4.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type4.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos4.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date4.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName4.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo4.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "5-",
                          ),
                          pw.Text("${sector5.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f5.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type5.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos5.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date5.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName5.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo5.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "6-",
                          ),
                          pw.Text("${sector6.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f6.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type6.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos6.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date6.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName6.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo6.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "7-",
                          ),
                          pw.Text("${sector7.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f7.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type7.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos7.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date7.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName7.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo7.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "8-",
                          ),
                          pw.Text("${sector8.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f8.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type8.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos8.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date8.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName8.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo8.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "9-",
                          ),
                          pw.Text("${sector9.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f9.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type9.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos9.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date9.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName9.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo9.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "10-",
                          ),
                          pw.Text("${sector10.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f10.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type10.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos10.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date10.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName10.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo10.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "11-",
                          ),
                          pw.Text("${sector11.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f11.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type11.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos11.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date11.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName11.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo11.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "12-",
                          ),
                          pw.Text("${sector12.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f12.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type12.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos12.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date12.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName12.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo12.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "13-",
                          ),
                          pw.Text("${sector13.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f13.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type13.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos13.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date13.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName13.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo13.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "14-",
                          ),
                          pw.Text("${sector14.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f14.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type14.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos14.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date14.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName14.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo14.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "15-",
                          ),
                          pw.Text("${sector15.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f15.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type15.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos15.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date15.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName15.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo15.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            style: pw.TextStyle(fontSize: 8.sp),
                            "16-",
                          ),
                          pw.Text("${sector16.text}",
                              style: pw.TextStyle(fontSize: 8.sp)),
                        ],
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Align(
                      alignment: pw.Alignment.centerLeft,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Row(
                          children: [
                            pw.Text(
                              "MS",
                              style: pw.TextStyle(fontSize: 8.sp),
                            ),
                            pw.SizedBox(width: 4.w),
                            pw.Text("${f16.text}",
                                style: pw.TextStyle(fontSize: 8.sp)),
                          ],
                        ),
                      ),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${type16.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${pos16.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${date16.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${inName16.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 8.h, horizontal: 3.w),
                      child: pw.Text("${codeNo16.text}",
                          style: pw.TextStyle(fontSize: 8.sp)),
                    ),
                  ),
                ]),
              ],
            ),
            pw.Table(
              columnWidths: {
                0: pw.FlexColumnWidth(14),
                1: pw.FlexColumnWidth(2),
                2: pw.FlexColumnWidth(2),
                3: pw.FlexColumnWidth(2),
                4: pw.FlexColumnWidth(2),
              },
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw_tableColumn1,
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "1-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text(
                              "Preflight emergency equipment check . location/operation",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us1.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s11.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s21.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s31.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "2-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("Exit operation",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us2.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s12.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s22.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s32.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "3-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text(
                              "Galley. electrical equipment and Circuit breakers",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us3.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s13.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s23.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s33.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "4-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("Intercommunication",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us4.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s14.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s24.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s34.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "5-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("Crew resource management & GSOP",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us5.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s15.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s25.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s35.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "6-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("Control Panels",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us6.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s16.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s26.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s36.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "7-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text(
                              "Passenger handling (disruptive passenger awareness)",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us7.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s17.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s27.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s37.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "8-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("Cockpit door . window . seat operations",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us8.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s18.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s28.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s38.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "9-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("First aid",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us9.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s19.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s29.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s39.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "10-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("Dangerous goods awareness",
                              style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us10.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s110.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s210.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s310.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
                pw.TableRow(children: <pw.Widget>[
                  pw.Container(
                    height: 10.h,
                    child: pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 1.h, horizontal: 3.w),
                      child: pw.Row(
                        children: [
                          pw.Text(
                            "11-",
                            style: pw.TextStyle(fontSize: 8.sp),
                          ),
                          pw.SizedBox(width: 4.w),
                          pw.Text("Drills", style: pw.TextStyle(fontSize: 8.sp))
                        ],
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${us11.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s111.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text("${s211.text}",
                            style: pw.TextStyle(fontSize: 8.sp)),
                      ),
                    ),
                  ),
                  pw.Center(
                    child: pw.Container(
                      height: 10.h,
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 1.h, horizontal: 3.w),
                        child: pw.Text(
                          "${s311.text}",
                          style: pw.TextStyle(fontSize: 8.sp),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
            pw.Table(
              columnWidths: {
                0: pw.FlexColumnWidth(1),
                1: pw.FlexColumnWidth(1),
                2: pw.FlexColumnWidth(1),
                3: pw.FlexColumnWidth(1),
                4: pw.FlexColumnWidth(1),
                5: pw.FlexColumnWidth(1),
              },
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw_tableColumn15,
              ],
            ),
            pw.Table(
              columnWidths: {
                0: pw.FlexColumnWidth(1),
                1: pw.FlexColumnWidth(1),
                2: pw.FlexColumnWidth(1),
                3: pw.FlexColumnWidth(1),
                4: pw.FlexColumnWidth(1),
                5: pw.FlexColumnWidth(1),
              },
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw.TableRow(
                  children: <pw.Widget>[
                    pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          horizontal: 4.w, vertical: 4.h),
                      child: pw.SizedBox(
                        height: 20.h,
                        child: pw.Row(
                          children: [
                            pw.Spacer(),
                            value6.toString() == "true"
                                ? pw.Padding(
                                    padding: pw.EdgeInsets.symmetric(
                                        horizontal: 2.w),
                                    child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        color: PdfColor.fromInt(0xFF000000),
                                        borderRadius:
                                            pw.BorderRadius.circular(2.sp),
                                      ),
                                      width: 9.w,
                                      height: 9.w,
                                      child: pw.Padding(
                                        padding: pw.EdgeInsets.all(1.sp),
                                        child: pw.Container(
                                            color: PdfColor.fromInt(0xFFFFFFFF),
                                            width: 8.w,
                                            height: 8.w,
                                            child: pw.Padding(
                                              padding: pw.EdgeInsets.all(1.sp),
                                              child: pw.Container(
                                                width: 6.w,
                                                height: 6.w,
                                                color: PdfColor.fromInt(
                                                    0xFF000000),
                                              ),
                                            )),
                                      ),
                                    ),
                                  )
                                : pw.Padding(
                                    padding: pw.EdgeInsets.symmetric(
                                        horizontal: 2.w),
                                    child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        color: PdfColor.fromInt(0xFF000000),
                                        borderRadius:
                                            pw.BorderRadius.circular(2.sp),
                                      ),
                                      width: 9.w,
                                      height: 9.w,
                                      child: pw.Padding(
                                        padding: pw.EdgeInsets.all(1.sp),
                                        child: pw.Container(
                                          color: PdfColor.fromInt(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                            pw.Text(
                              "S",
                            ),
                            pw.Spacer(),
                            value7 == true
                                ? pw.Padding(
                                    padding: pw.EdgeInsets.symmetric(
                                        horizontal: 2.w),
                                    child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        color: PdfColor.fromInt(0xFF000000),
                                        borderRadius:
                                            pw.BorderRadius.circular(2.sp),
                                      ),
                                      width: 9.w,
                                      height: 9.w,
                                      child: pw.Padding(
                                        padding: pw.EdgeInsets.all(1.sp),
                                        child: pw.Container(
                                            color: PdfColor.fromInt(0xFFFFFFFF),
                                            width: 8.w,
                                            height: 8.w,
                                            child: pw.Padding(
                                              padding: pw.EdgeInsets.all(1.sp),
                                              child: pw.Container(
                                                width: 6.w,
                                                height: 6.w,
                                                color: PdfColor.fromInt(
                                                    0xFF000000),
                                              ),
                                            )),
                                      ),
                                    ),
                                  )
                                : pw.Padding(
                                    padding: pw.EdgeInsets.symmetric(
                                        horizontal: 2.w),
                                    child: pw.Container(
                                      decoration: pw.BoxDecoration(
                                        color: PdfColor.fromInt(0xFF000000),
                                        borderRadius:
                                            pw.BorderRadius.circular(2.sp),
                                      ),
                                      width: 9.w,
                                      height: 9.w,
                                      child: pw.Padding(
                                        padding: pw.EdgeInsets.all(1.sp),
                                        child: pw.Container(
                                          color: PdfColor.fromInt(0xFFFFFFFF),
                                        ),
                                      ),
                                    ),
                                  ),
                            pw.Text(
                              "US",
                            ),
                            pw.Spacer(),
                          ],
                        ),
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 4.h, horizontal: 10.w),
                      child: pw.Container(
                        height: 20.h,
                        child: pw.Text("${comDate.text}",
                            style: pw.TextStyle(fontSize: 9.sp)),
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 4.h, horizontal: 10.w),
                      child: pw.Container(
                        height: 20.h,
                        child: pw.Text("${instructorName.text}",
                            style: pw.TextStyle(fontSize: 9.sp)),
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 4.h, horizontal: 10.w),
                      child: pw.Container(
                        height: 20.h,
                        child: pw.Text("${instructorSign.text}",
                            style: pw.TextStyle(fontSize: 9.sp)),
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 4.h, horizontal: 10.w),
                      child: pw.Container(
                        height: 20.h,
                        child: pw.Text(
                          "${instructorCode.text}",
                          style: pw.TextStyle(fontSize: 9.sp),
                        ),
                      ),
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.symmetric(
                          vertical: 4.h, horizontal: 10.w),
                      child: pw.Container(
                        height: 20.h,
                        child: pw.Text("${instructorLis.text}",
                            style: pw.TextStyle(fontSize: 9.sp)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            pw.Table(
              columnWidths: {
                0: pw.FlexColumnWidth(1),
                1: pw.FlexColumnWidth(1),
                2: pw.FlexColumnWidth(1),
                3: pw.FlexColumnWidth(1),
                4: pw.FlexColumnWidth(1),
                5: pw.FlexColumnWidth(1),
              },
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw_tableColumn17,
              ],
            ),
            pw.Table(
              columnWidths: {
                0: pw.FlexColumnWidth(1),
                1: pw.FlexColumnWidth(1),
                2: pw.FlexColumnWidth(1),
                3: pw.FlexColumnWidth(1),
                4: pw.FlexColumnWidth(1),
                5: pw.FlexColumnWidth(1),
              },
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw.TableRow(children: <pw.Widget>[
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(
                        vertical: 4.h, horizontal: 10.w),
                    child: pw.Container(
                      height: 20.h,
                      child: pw.Text(
                        "${traineeSign.text}",
                        style: pw.TextStyle(fontSize: 9.sp),
                      ),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(
                        vertical: 4.h, horizontal: 10.w),
                    child: pw.Container(
                      height: 20.h,
                      child: pw.Text("${mDate.text}",
                          style: pw.TextStyle(fontSize: 9.sp)),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(
                        vertical: 4.h, horizontal: 10.w),
                    child: pw.Container(
                      height: 20.h,
                      child: pw.Text("${examinerName.text}",
                          style: pw.TextStyle(fontSize: 9.sp)),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(
                        vertical: 4.h, horizontal: 10.w),
                    child: pw.Container(
                      height: 20.h,
                      child: pw.Text("${examinerSign.text}",
                          style: pw.TextStyle(fontSize: 9.sp)),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(
                        vertical: 4.h, horizontal: 10.w),
                    child: pw.Container(
                      height: 20.h,
                      child: pw.Text("${examinerCode.text}",
                          style: pw.TextStyle(fontSize: 9.sp)),
                    ),
                  ),
                  pw.Padding(
                    padding: pw.EdgeInsets.symmetric(
                        vertical: 4.h, horizontal: 10.w),
                    child: pw.Container(
                      height: 20.h,
                      child: pw.Text("${examinerLis.text}",
                          style: pw.TextStyle(fontSize: 9.sp)),
                    ),
                  ),
                ]),
              ],
            ),
            pw.Table(
              columnWidths: {
                0: pw.FlexColumnWidth(1),
                1: pw.FlexColumnWidth(1),
              },
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw_tableColumn19,
              ],
            ),
            pw.Table(
              defaultColumnWidth: pw.FixedColumnWidth(643.w),
              border: pw.TableBorder.all(width: 1.w),
              children: <pw.TableRow>[
                pw.TableRow(
                  children: <pw.Widget>[
                    pw.Center(
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            horizontal: 3.w, vertical: 8.h),
                        child: pw.Container(
                          child: pw.Container(
                            height: 10.h,
                            child: pw.Text("${gMFT.text}",
                                style: pw.TextStyle(fontSize: 9.sp)),
                          ),
                        ),
                      ),
                    ),
                    pw.Center(
                      child: pw.Padding(
                        padding: pw.EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 3.w),
                        child: pw.Container(
                          height: 10.h,
                          child: pw.Text("${lastDate.text}",
                              style: pw.TextStyle(fontSize: 9.sp)),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        );
      },
    ));
    final Uint8List bytes = await pdf.save();
    // Save the PDF to a file
    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;
    final file = File('$appDocPath/example.pdf');
    await file.writeAsBytes(await pdf.save());
    // Print the PDF using the printing package
    await Printing.layoutPdf(
        onLayout: (format) async => bytes, name: 'example.pdf');
  }

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
            SizedBox(
              width: 130.w,
              child:
                  CustomFormField(text: "${sector1.text}", controller: sector1),
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
                child: CustomFormField(text: "${f1.text}", controller: f1),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type1.text}", controller: type1),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos1.text}", controller: pos1),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date1.text}", controller: date1),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName1.text}", controller: inName1),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo1.text}", controller: codeNo1),
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
              child:
                  CustomFormField(text: "${sector2.text}", controller: sector2),
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
                child: CustomFormField(text: "${f2.text}", controller: f2),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type2.text}", controller: type2),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos2.text}", controller: pos2),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date2.text}", controller: date2),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName2.text}", controller: inName2),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo2.text}", controller: codeNo2),
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
              child:
                  CustomFormField(text: "${sector3.text}", controller: sector3),
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
                child: CustomFormField(text: "${f3.text}", controller: f3),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type3.text}", controller: type3),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos3.text}", controller: pos3),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date3.text}", controller: date3),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName3.text}", controller: inName3),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo3.text}", controller: codeNo3),
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
              child:
                  CustomFormField(text: "${sector4.text}", controller: sector4),
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
                child: CustomFormField(text: "${f4.text}", controller: f4),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type4.text}", controller: type4),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos4.text}", controller: pos4),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date4.text}", controller: date4),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName4.text}", controller: inName4),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo4.text}", controller: codeNo4),
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
              child:
                  CustomFormField(text: "${sector5.text}", controller: sector5),
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
                child: CustomFormField(text: "${f5.text}", controller: f5),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type5.text}", controller: type5),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos5.text}", controller: pos5),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date5.text}", controller: date5),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName5.text}", controller: inName5),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo5.text}", controller: codeNo5),
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
              child:
                  CustomFormField(text: "${sector6.text}", controller: sector6),
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
                child: CustomFormField(text: "${f6.text}", controller: f6),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type6.text}", controller: type6),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos6.text}", controller: pos6),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date6.text}", controller: date6),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName6.text}", controller: inName6),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo6.text}", controller: codeNo6),
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
              child:
                  CustomFormField(text: "${sector7.text}", controller: sector7),
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
                child: CustomFormField(text: "${f7.text}", controller: f7),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type7.text}", controller: type7),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos7.text}", controller: pos7),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date7.text}", controller: date7),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName7.text}", controller: inName7),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo7.text}", controller: codeNo7),
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
              child:
                  CustomFormField(text: "${sector8.text}", controller: sector8),
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
                child: CustomFormField(text: "${f8.text}", controller: f8),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type8.text}", controller: type8),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos8.text}", controller: pos8),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date8.text}", controller: date8),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName8.text}", controller: inName8),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo8.text}", controller: codeNo8),
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
              child:
                  CustomFormField(text: "${sector9.text}", controller: sector9),
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
                child: CustomFormField(text: "${f9.text}", controller: f9),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type9.text}", controller: type9),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos9.text}", controller: pos9),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date9.text}", controller: date9),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName9.text}", controller: inName9),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo9.text}", controller: codeNo9),
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
              child: CustomFormField(
                  text: "${sector10.text}", controller: sector10),
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
                child: CustomFormField(text: "${f10.text}", controller: f10),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type10.text}", controller: type10),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos10.text}", controller: pos10),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date10.text}", controller: date10),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName10.text}", controller: inName10),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo10.text}", controller: codeNo10),
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
              child: CustomFormField(
                  text: "${sector11.text}", controller: sector11),
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
                child: CustomFormField(text: "${f11.text}", controller: f11),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type11.text}", controller: type11),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos11.text}", controller: pos11),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date11.text}", controller: date11),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName11.text}", controller: inName11),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo11.text}", controller: codeNo11),
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
              child: CustomFormField(
                  text: "${sector12.text}", controller: sector12),
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
                child: CustomFormField(text: "${f12.text}", controller: f12),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type12.text}", controller: type12),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos12.text}", controller: pos12),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date12.text}", controller: date12),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName12.text}", controller: inName12),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo12.text}", controller: codeNo12),
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
              child: CustomFormField(
                  text: "${sector13.text}", controller: sector13),
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
                child: CustomFormField(text: "${f13.text}", controller: f13),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type13.text}", controller: type13),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos13.text}", controller: pos13),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date13.text}", controller: date13),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName13.text}", controller: inName13),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo13.text}", controller: codeNo13),
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
              child: CustomFormField(
                  text: "${sector14.text}", controller: sector14),
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
                child: CustomFormField(text: "${f14.text}", controller: f14),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type14.text}", controller: type14),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos14.text}", controller: pos14),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date14.text}", controller: date14),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName14.text}", controller: inName14),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo14.text}", controller: codeNo14),
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
              child: CustomFormField(
                  text: "${sector15.text}", controller: sector15),
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
                child: CustomFormField(text: "${f15.text}", controller: f15),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type15.text}", controller: type15),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos15.text}", controller: pos15),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date15.text}", controller: date15),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName15.text}", controller: inName15),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo15.text}", controller: codeNo15),
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
              child: CustomFormField(
                  text: "${sector16.text}", controller: sector16),
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
                child: CustomFormField(text: "${f16.text}", controller: f16),
              ),
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${type16.text}", controller: type16),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${pos16.text}", controller: pos16),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${date16.text}", controller: date16),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${inName16.text}", controller: inName16),
      ),
      Padding(
        padding: EdgeInsets.all(10.sp),
        child: CustomFormField(text: "${codeNo16.text}", controller: codeNo16),
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
        child: CustomFormField(text: "${us1.text}", controller: us1),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s11.text}", controller: s11),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s21.text}", controller: s21),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s31.text}", controller: s31),
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
        child: CustomFormField(text: "${us2.text}", controller: us2),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s12.text}", controller: s12),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s22.text}", controller: s22),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s32.text}", controller: s32),
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
        child: CustomFormField(text: "${us3.text}", controller: us3),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s13.text}", controller: s13),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s23.text}", controller: s23),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s33.text}", controller: s33),
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
        child: CustomFormField(text: "${us4.text}", controller: us4),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s14.text}", controller: s14),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s24.text}", controller: s24),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s34.text}", controller: s34),
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
        child: CustomFormField(text: "${us5.text}", controller: us5),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s15.text}", controller: s15),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s25.text}", controller: s25),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s35.text}", controller: s35),
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
        child: CustomFormField(text: "${us6.text}", controller: us6),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s16.text}", controller: s16),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s26.text}", controller: s26),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s36.text}", controller: s36),
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
        child: CustomFormField(text: "${us7.text}", controller: us7),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s17.text}", controller: s17),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s27.text}", controller: s27),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s37.text}", controller: s37),
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
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${us8.text}", controller: us8),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s18.text}", controller: s18),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s28.text}", controller: s28),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s38.text}", controller: s38),
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
        child: CustomFormField(text: "${us9.text}", controller: us9),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s19.text}", controller: s19),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s29.text}", controller: s29),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s39.text}", controller: s39),
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
        child: CustomFormField(text: "${us10.text}", controller: us10),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s110.text}", controller: s110),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s210.text}", controller: s210),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s310.text}", controller: s310),
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
        child: CustomFormField(text: "${us11.text}", controller: us11),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s111.text}", controller: s111),
      ),
      Padding(
        padding: EdgeInsets.all(7.sp),
        child: CustomFormField(text: "${s211.text}", controller: s211),
      ),
      Padding(
        padding: EdgeInsets.all(8.sp),
        child: CustomFormField(text: "${s311.text}", controller: s311),
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
          child: CustomFormField(
              text: "${traineeSign.text}", controller: traineeSign),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: Container(
          height: 20.h,
          child: CustomFormField(text: "${mDate.text}", controller: mDate),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: Container(
          height: 20.h,
          child: CustomFormField(
              text: "${examinerName.text}", controller: examinerName),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: Container(
          height: 20.h,
          child: CustomFormField(
              text: "${examinerSign.text}", controller: examinerSign),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: Container(
          height: 20.h,
          child: CustomFormField(
              text: "${examinerCode.text}", controller: examinerCode),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 10.w),
        child: Container(
          height: 20.h,
          child: CustomFormField(
              text: "${examinerLis.text}", controller: examinerLis),
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
            padding: EdgeInsets.only(top: 15.sp),
            child: Container(
              height: 30.h,
              child: CustomFormField(text: "${gMFT.text}", controller: gMFT),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 15.sp),
            child: Container(
              height: 30.h,
              child: CustomFormField(
                  text: "${lastDate.text}", controller: lastDate),
            ),
          ),
        ),
      ],
    );
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
                                      CustomText(
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
                                      CustomText(
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
                                      value1 == "true"
                                          ? Checkbox(
                                              value: true,
                                              onChanged: (v) {
                                                setState(() {
                                                  value1 = !value1;
                                                });
                                              })
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
                                          ? Checkbox(
                                              value: true,
                                              onChanged: (v) {
                                                setState(() {
                                                  value2 = !value2;
                                                });
                                              })
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
                                          ? Checkbox(
                                              value: true,
                                              onChanged: (v) {
                                                setState(() {
                                                  value3 = !value3;
                                                });
                                              })
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
                                          ? Checkbox(
                                              value: true,
                                              onChanged: (v) {
                                                setState(() {
                                                  value4 = !value4;
                                                });
                                              })
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
                                          ? Checkbox(
                                              value: true,
                                              onChanged: (v) {
                                                setState(() {
                                                  value5 = !value5;
                                                });
                                              })
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
                                      CustomFormField(
                                          text: "${firstDate.text}",
                                          controller: firstDate),
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
                                        },
                                      ),
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
                                        },
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
                                    child: CustomFormField(
                                        text: "${comDate.text}",
                                        controller: comDate),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.h, horizontal: 10.w),
                                  child: Container(
                                    height: 20.h,
                                    child: CustomFormField(
                                        text: "${instructorName.text}",
                                        controller: instructorName),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.h, horizontal: 10.w),
                                  child: Container(
                                    height: 20.h,
                                    child: CustomFormField(
                                        text: "${instructorSign.text}",
                                        controller: instructorSign),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.h, horizontal: 10.w),
                                  child: Container(
                                    height: 20.h,
                                    child: CustomFormField(
                                        text: "${instructorCode.text}",
                                        controller: instructorCode),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 20.h, horizontal: 10.w),
                                  child: Container(
                                    height: 20.h,
                                    child: CustomFormField(
                                        text: "${instructorLis.text}",
                                        controller: instructorLis),
                                  ),
                                ),
                              ],
                            ),
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
                                "Value 1": value1,
                                "Value 2": value2,
                                "Value 3": value3,
                                "Value 4": value4,
                                "Value 5": value5,
                                "Value 6": value6,
                                "Value 7": value7,
                              });
                              _printPdf();
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

  Future<void> getData() async {
    await FirebaseFirestore.instance
        .collection('Form(Data)')
        .doc(widget.traineeName)
        .snapshots()
        .forEach((element) {
      if (element.data()?['Sector 6'] != null) {
        sector1.text = element.data()?['Sector 1'];
        sector2.text = element.data()?['Sector 2'];
        sector3.text = element.data()?['Sector 3'];
        sector4.text = element.data()?['Sector 4'];
        sector5.text = element.data()?['Sector 5'];
        sector6.text = element.data()?['Sector 6'];
        sector7.text = element.data()?['Sector 7'];
        sector8.text = element.data()?['Sector 8'];
        sector9.text = element.data()?['Sector 9'];
        sector10.text = element.data()?['Sector 10'];
        sector11.text = element.data()?['Sector 11'];
        sector12.text = element.data()?['Sector 12'];
        sector13.text = element.data()?['Sector 13'];
        sector14.text = element.data()?['Sector 14'];
        sector15.text = element.data()?['Sector 15'];
        sector16.text = element.data()?['Sector 16'];
        f1.text = element.data()?['Flight No 1'];
        f2.text = element.data()?['Flight No 2'];
        f3.text = element.data()?['Flight No 3'];
        f4.text = element.data()?['Flight No 4'];
        f5.text = element.data()?['Flight No 5'];
        f6.text = element.data()?['Flight No 6'];
        f7.text = element.data()?['Flight No 7'];
        f8.text = element.data()?['Flight No 8'];
        f9.text = element.data()?['Flight No 9'];
        f10.text = element.data()?['Flight No 10'];
        f11.text = element.data()?['Flight No 11'];
        f12.text = element.data()?['Flight No 12'];
        f13.text = element.data()?['Flight No 13'];
        f14.text = element.data()?['Flight No 14'];
        f15.text = element.data()?['Flight No 15'];
        f16.text = element.data()?['Flight No 16'];
        type1.text = element.data()?['A/C Type 1'];
        type2.text = element.data()?['A/C Type 2'];
        type3.text = element.data()?['A/C Type 3'];
        type4.text = element.data()?['A/C Type 4'];
        type5.text = element.data()?['A/C Type 5'];
        type6.text = element.data()?['A/C Type 6'];
        type7.text = element.data()?['A/C Type 7'];
        type8.text = element.data()?['A/C Type 8'];
        type9.text = element.data()?['A/C Type 9'];
        type10.text = element.data()?['A/C Type 10'];
        type11.text = element.data()?['A/C Type 11'];
        type12.text = element.data()?['A/C Type 12'];
        type13.text = element.data()?['A/C Type 13'];
        type14.text = element.data()?['A/C Type 14'];
        type15.text = element.data()?['A/C Type 15'];
        type16.text = element.data()?['A/C Type 16'];
        pos1.text = element.data()?['Position 1'];
        pos2.text = element.data()?['Position 2'];
        pos3.text = element.data()?['Position 3'];
        pos4.text = element.data()?['Position 4'];
        pos5.text = element.data()?['Position 5'];
        pos6.text = element.data()?['Position 6'];
        pos7.text = element.data()?['Position 7'];
        pos8.text = element.data()?['Position 8'];
        pos9.text = element.data()?['Position 9'];
        pos10.text = element.data()?['Position 10'];
        pos11.text = element.data()?['Position 11'];
        pos12.text = element.data()?['Position 12'];
        pos13.text = element.data()?['Position 13'];
        pos14.text = element.data()?['Position 14'];
        pos15.text = element.data()?['Position 15'];
        pos16.text = element.data()?['Position 16'];
        date1.text = element.data()?['Date 1'];
        date.text = element.data()?['Date 2'];
        date3.text = element.data()?['Date 3'];
        date4.text = element.data()?['Date 4'];
        date5.text = element.data()?['Date 5'];
        date6.text = element.data()?['Date 6'];
        date7.text = element.data()?['Date 7'];
        date8.text = element.data()?['Date 8'];
        date9.text = element.data()?['Date 9'];
        date10.text = element.data()?['Date 10'];
        date11.text = element.data()?['Date 11'];
        date12.text = element.data()?['Date 12'];
        date13.text = element.data()?['Date 13'];
        date14.text = element.data()?['Date 14'];
        date15.text = element.data()?['Date 15'];
        date16.text = element.data()?['Date 16'];
        inName1.text = element.data()?['Instructor Name 1'];
        inName2.text = element.data()?['Instructor Name 2'];
        inName3.text = element.data()?['Instructor Name 3'];
        inName4.text = element.data()?['Instructor Name 4'];
        inName5.text = element.data()?['Instructor Name 5'];
        inName6.text = element.data()?['Instructor Name 6'];
        inName7.text = element.data()?['Instructor Name 7'];
        inName8.text = element.data()?['Instructor Name 8'];
        inName9.text = element.data()?['Instructor Name 9'];
        inName10.text = element.data()?['Instructor Name 10'];
        inName11.text = element.data()?['Instructor Name 11'];
        inName12.text = element.data()?['Instructor Name 12'];
        inName13.text = element.data()?['Instructor Name 13'];
        inName14.text = element.data()?['Instructor Name 14'];
        inName15.text = element.data()?['Instructor Name 15'];
        inName16.text = element.data()?['Instructor Name 16'];
        codeNo1.text = element.data()?['Code No 1'];
        codeNo2.text = element.data()?['Code No 2'];
        codeNo3.text = element.data()?['Code No 3'];
        codeNo4.text = element.data()?['Code No 4'];
        codeNo5.text = element.data()?['Code No 5'];
        codeNo6.text = element.data()?['Code No 6'];
        codeNo7.text = element.data()?['Code No 7'];
        codeNo8.text = element.data()?['Code No 8'];
        codeNo9.text = element.data()?['Code No 9'];
        codeNo10.text = element.data()?['Code No 10'];
        codeNo11.text = element.data()?['Code No 11'];
        codeNo12.text = element.data()?['Code No 12'];
        codeNo13.text = element.data()?['Code No 13'];
        codeNo14.text = element.data()?['Code No 14'];
        codeNo15.text = element.data()?['Code No 15'];
        codeNo16.text = element.data()?['Code No 16'];
        us1.text = element.data()?['Us 1'];
        us2.text = element.data()?['Us 2'];
        us3.text = element.data()?['Us 3'];
        us4.text = element.data()?['Us 4'];
        us5.text = element.data()?['Us 5'];
        us6.text = element.data()?['Us 6'];
        us7.text = element.data()?['Us 7'];
        us8.text = element.data()?['Us 8'];
        us9.text = element.data()?['Us 9'];
        us10.text = element.data()?['Us 10'];
        us11.text = element.data()?['Us 11'];
        s11.text = element.data()?['S 11'];
        s12.text = element.data()?['S 12'];
        s13.text = element.data()?['S 13'];
        s14.text = element.data()?['S 14'];
        s15.text = element.data()?['S 15'];
        s16.text = element.data()?['S 16'];
        s17.text = element.data()?['S 17'];
        s18.text = element.data()?['S 18'];
        s19.text = element.data()?['S 19'];
        s110.text = element.data()?['S 110'];
        s111.text = element.data()?['S 111'];
        s21.text = element.data()?['S 21'];
        s22.text = element.data()?['S 22'];
        s23.text = element.data()?['S 23'];
        s24.text = element.data()?['S 24'];
        s25.text = element.data()?['S 25'];
        s26.text = element.data()?['S 26'];
        s27.text = element.data()?['S 27'];
        s28.text = element.data()?['S 28'];
        s29.text = element.data()?['S 29'];
        s210.text = element.data()?['S 210'];
        s211.text = element.data()?['S 211'];
        s31.text = element.data()?['S 31'];
        s32.text = element.data()?['S 32'];
        s33.text = element.data()?['S 33'];
        s34.text = element.data()?['S 34'];
        s35.text = element.data()?['S 35'];
        s36.text = element.data()?['S 36'];
        s37.text = element.data()?['S 37'];
        s38.text = element.data()?['S 38'];
        s39.text = element.data()?['S 39'];
        s310.text = element.data()?['S 310'];
        s311.text = element.data()?['S 311'];
        comDate.text = element.data()?['Completion date'];
        instructorName.text = element.data()?['Instructor Name'];
        instructorSign.text = element.data()?['Instructor Signature'];
        instructorCode.text = element.data()?['Instructor CodeNo'];
        instructorLis.text = element.data()?['Instructor License'];
        traineeSign.text = element.data()?['Trainee Signature'];
        firstDate.text = element.data()?['First Date'];
        examinerName.text = element.data()?['Examiner Name'];
        examinerSign.text = element.data()?['Examiner Signature'];
        examinerCode.text = element.data()?['Examiner CodeNo'];
        examinerLis.text = element.data()?['Examiner License'];
        mDate.text = element.data()?['M Date'];
        lastDate.text = element.data()?['Last Date'];
        gMFT.text = element.data()?['G.M.F.T'];
        value1 = element.data()?['Value 1'];
        value2 = element.data()?['Value 2'];
        value3 = element.data()?['Value 3'];
        value4 = element.data()?['Value 4'];
        value5 = element.data()?['Value 5'];
        value6 = element.data()?['Value 6'];
        value7 = element.data()?['Value 7'];
      }
      setState(() {});
    });
  }
}
// Text('${traineeName}'),
// Text('${date}'),
