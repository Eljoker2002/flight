import 'dart:typed_data';
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
  DateTime selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    TableRow _tableColumn2 = TableRow(children: <Widget>[
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Sectors"),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Flight No"),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("A/C Type"),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Position"),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Date"),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Instructor Name"),
        ),
      ),
      Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Code No"),
        ),
      ),
    ]);
    TableRow _tableColumn3 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomFormField(),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
          child: Text("MS"),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomFormField(),
      ),
      Center(
        child: InkWell(
          onTap: () async {
            final DateTime? dateTime = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(2000),
              lastDate: DateTime(3000),
            );
            if (dateTime != null) {
              setState(() {
                selectedDate = dateTime;
              });
            }
          },
          child: Center(
            child: Text(
              "${selectedDate.day}    /    ${selectedDate.month}    /    ${selectedDate.year}",
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn1 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "INFLIGHT COMPETENCY CHECK ITEMS" "INFLIGHT COMPETENCY CHECK ITEMS",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: Text(
          "US",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: Text(
          "S1",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: Text(
          "S2",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
            child: Text(
          "S3",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    ]);
    TableRow _tableColumn4 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("1-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn5 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("2-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn6 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("3-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn7 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("4-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn8 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("5-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn9 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("6-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn10 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("7-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn11 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("8-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn12 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("9-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn13 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("10-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn14 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(7.0),
        child: Row(
          children: [
            Text("11-"),
            SizedBox(width: 4.w),
            CustomFormField(),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
      Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),
    ]);
    TableRow _tableColumn15 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 25.h),
        child: Center(child: Text("First Result")),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: Text('''  Completion 
        date'''),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: Text('''     Instructor 
        Name'''),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w, vertical: 15.h),
        child: Center(
          child: Text('''       Istructor      
      signature'''),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text('''        Instructor   
         Code No'''),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Text('''   Instructor 
     license'''),
        ),
      ),
    ]);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: 1285.w,
                  child: Column(
                    children: [
                      Table(
                        defaultColumnWidth: FixedColumnWidth(1285.w),
                        border: TableBorder.all(width: 1.w),
                        children: <TableRow>[
                          TableRow(children: [
                            Container(
                              color: Colors.cyan,
                              width: 1285.w,
                              height: 40.h,
                              child: Center(
                                child: Text(
                                  "CABIN CREW INFLIGHT COMPETENCY CHECK",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                    Text(
                                      "Trainee Name:",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        // onSaved: (v) {
                                        //   name = v!;
                                        // },
                                        decoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent)),
                                        ),
                                      ),
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
                                    Text(
                                      "Code Num:",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
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
                                    Text(
                                      "Training Categories:",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Checkbox(value: false, onChanged: (v) {}),
                                    Text(
                                      "Initial",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Checkbox(value: false, onChanged: (v) {}),
                                    Text(
                                      "Transition",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Checkbox(value: false, onChanged: (v) {}),
                                    Text(
                                      "Requalification Recurrent",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Checkbox(value: false, onChanged: (v) {}),
                                    Text(
                                      "SEP1",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
                                    ),
                                    Checkbox(value: false, onChanged: (v) {}),
                                    Text(
                                      "SEP2",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
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
                                    Text(
                                      "Date:",
                                      style: TextStyle(
                                        fontSize: 15.sp,
                                      ),
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

                      // ElevatedButton(
                      //   onPressed: () {
                      //     _saveAndPrintPdf();
                      //   },
                      //   child: Text('Save and Print PDF'),
                      // ),
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
  CustomFormField({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 10.h,
        child: TextFormField(
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
