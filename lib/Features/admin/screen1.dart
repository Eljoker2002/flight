import 'dart:typed_data';
import 'package:flight/widgets/date_widget.dart';
import 'package:flight/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'dart:io';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        child: CustomFormField(),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
          child: CustomText(
            text: "MS",
            fontSize: 12.sp,
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
            text: "INFLIGHT COMPETENCY CHECK ITEMS"
                "INFLIGHT COMPETENCY CHECK ITEMS",
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
            CustomFormField(),
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
            CustomFormField(),
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
            CustomFormField(),
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
            CustomFormField(),
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
            CustomFormField(),
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
            CustomFormField(),
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
            CustomFormField(),
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
            CustomFormField(),
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
            CustomFormField(),
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
        padding: EdgeInsets.all(7.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "10-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            CustomFormField(),
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
        padding: EdgeInsets.all(7.0.sp),
        child: Row(
          children: [
            CustomText(
              text: "11-",
              fontSize: 13.sp,
            ),
            SizedBox(width: 4.w),
            CustomFormField(),
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
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.h),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    height: 1543.sp,
                    width: 1285.w,
                    child: Expanded(
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
                                        CustomFormField(),
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
                                        CustomFormField(),
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
                                        CustomDate(),
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
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
                              _tableColumn3,
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
                        ],
                      ),
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

///////////////////// Refactor
class CustomFormField extends StatelessWidget {
  void Function(String?)? onSaved;
  CustomFormField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 10.h,
        child: TextFormField(
          cursorHeight: 20.h,
          style: TextStyle(fontSize: 15.sp),
          onSaved: onSaved,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
            ),
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
