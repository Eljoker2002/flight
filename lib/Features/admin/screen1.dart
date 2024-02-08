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
  // late pw.TableRow _tableColumn2;
  // late pw.TableRow _tableColumn3;
  // late String name;
  //
  // @override
  // void initState() {
  //   _tableColumn2 = pw.TableRow(children: <pw.Widget>[
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("Sectors"),
  //       ),
  //     ),
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("Flight No"),
  //       ),
  //     ),
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("A/C Type"),
  //       ),
  //     ),
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("Position"),
  //       ),
  //     ),
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("Date"),
  //       ),
  //     ),
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("Instructor Name"),
  //       ),
  //     ),
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("Code No"),
  //       ),
  //     ),
  //   ]);
  //
  //   _tableColumn3 = pw.TableRow(children: <pw.Widget>[
  //     pw.Padding(
  //       padding: pw.EdgeInsets.all(5.0),
  //       child: pw.Text("1"),
  //     ),
  //     pw.Align(
  //       alignment: pw.Alignment.centerLeft,
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.symmetric(vertical: 5, horizontal: 3),
  //         child: pw.Text("MS"),
  //       ),
  //     ),
  //     pw.Padding(
  //       padding: pw.EdgeInsets.all(5.0),
  //       child: pw.Text("1"),
  //     ),
  //     pw.Padding(
  //       padding: pw.EdgeInsets.all(5.0),
  //       child: pw.Text("1"),
  //     ),
  //     pw.Center(
  //       child: pw.Padding(
  //         padding: pw.EdgeInsets.all(5.0),
  //         child: pw.Text("1"),
  //       ),
  //     ),
  //     pw.Padding(
  //       padding: pw.EdgeInsets.all(5.0),
  //       child: pw.Text("1"),
  //     ),
  //     pw.Padding(
  //       padding: pw.EdgeInsets.all(5.0),
  //       child: pw.Text("1"),
  //     ),
  //   ]);
  //   super.initState();
  // }
  //
  // Future<void> _saveAndPrintPdf() async {
  //   final pdf = pw.Document();
  //   pdf.addPage(
  //     pw.Page(
  //       build: (context) {
  //         return pw.Column(
  //           children: [
  //             pw.Table(
  //               defaultColumnWidth: pw.FixedColumnWidth(1285.w),
  //               border: pw.TableBorder.all(width: 1.w),
  //               children: <pw.TableRow>[
  //                 pw.TableRow(children: [
  //                   pw.Container(
  //                     width: 1285.w,
  //                     height: 30.h,
  //                     child: pw.Center(
  //                       child: pw.Text(
  //                         "CABIN CREW INFLIGHT COMPETENCY CHECK",
  //                         style: pw.TextStyle(
  //                           fontSize: 16.sp,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ]),
  //               ],
  //             ),
  //             pw.Table(
  //               defaultColumnWidth: pw.FixedColumnWidth(643.w),
  //               border: pw.TableBorder.all(width: 1.w),
  //               children: <pw.TableRow>[
  //                 pw.TableRow(
  //                   children: [
  //                     pw.Container(
  //                       // color: Colors.cyanAccent,
  //                       width: 321.5.w,
  //                       height: 30.h,
  //                       child: pw.Row(
  //                         children: [
  //                           pw.SizedBox(width: 2.w),
  //                           pw.Text(
  //                             "Trainee Name:",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           pw.Text(name),
  //                         ],
  //                       ),
  //                     ),
  //                     pw.Container(
  //                       // color: Colors.cyanAccent,
  //                       width: 321.5.w,
  //                       height: 30.h,
  //                       child: pw.Row(
  //                         children: [
  //                           pw.SizedBox(width: 2.w),
  //                           pw.Text(
  //                             "Code Num:",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           // pw.CustomFormField(),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //             pw.Table(
  //               columnWidths: {
  //                 0: pw.FlexColumnWidth(4),
  //                 1: pw.FlexColumnWidth(1),
  //               },
  //               defaultColumnWidth: pw.FixedColumnWidth(1285.w),
  //               border: pw.TableBorder.all(width: 1.w),
  //               children: <pw.TableRow>[
  //                 pw.TableRow(
  //                   children: [
  //                     pw.Container(
  //                       // color: Colors.cyanAccent,
  //                       width: 500.w,
  //                       height: 20.h,
  //                       child: pw.Row(
  //                         children: [
  //                           pw.SizedBox(width: 2.w),
  //                           pw.Text(
  //                             "Training Categories:",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           pw.Checkbox(value: false, name: ''),
  //                           pw.Text(
  //                             "Initial",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           pw.Checkbox(value: false, name: ''),
  //                           pw.Text(
  //                             "Transition",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           pw.Checkbox(value: false, name: ''),
  //                           pw.Text(
  //                             "Requalification Recurrent",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           pw.Checkbox(value: false, name: ''),
  //                           pw.Text(
  //                             "SEP1",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           pw.Checkbox(value: false, name: ''),
  //                           pw.Text(
  //                             "SEP2",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                         ],
  //                       ),
  //                     ),
  //                     pw.Container(
  //                       // color: Colors.cyanAccent,
  //                       width: 50.w,
  //                       height: 20.h,
  //                       child: pw.Row(
  //                         children: [
  //                           pw.SizedBox(width: 2.w),
  //                           pw.Text(
  //                             "Date:",
  //                             style: pw.TextStyle(
  //                               fontSize: 15.sp,
  //                             ),
  //                           ),
  //                           pw.SizedBox(width: 4.w),
  //                           pw.Text(""),
  //                         ],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //             pw.Table(
  //                 defaultColumnWidth: pw.FixedColumnWidth(184.w),
  //                 border: pw.TableBorder.all(width: 1.w),
  //                 children: <pw.TableRow>[_tableColumn2]),
  //             pw.Table(
  //                 defaultColumnWidth: pw.FixedColumnWidth(184.w),
  //                 border: pw.TableBorder.all(width: 1.w),
  //                 children: <pw.TableRow>[
  //                   _tableColumn3,
  //                   _tableColumn3,
  //                   _tableColumn3,
  //                   _tableColumn3,
  //                   _tableColumn3,
  //                   _tableColumn3,
  //                   _tableColumn3,
  //                   _tableColumn3,
  //                 ]),
  //           ],
  //         );
  //       },
  //     ),
  //   );
  //   final Uint8List bytes = await pdf.save();
  //   // Save the PDF to a file
  //   final appDocDir = await getApplicationDocumentsDirectory();
  //   final appDocPath = appDocDir.path;
  //   final file = File('$appDocPath/example.pdf');
  //   await file.writeAsBytes(bytes);
  //   // Print the PDF using the printing package
  //   await Printing.layoutPdf(
  //     onLayout: (format) async => bytes,
  //     name: 'example.pdf',
  //   );
  // }

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
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Expanded(
            child: Container(
              height: 15.h,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "         /             /20",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
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
      child: Text("INFLIGHT COMPETENCY CHECK ITEMS""INFLIGHT COMPETENCY CHECK ITEMS",
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.bold,
        ),),
    ),
  ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(child: Text("US",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),)),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(child: Text("S1",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),)),
      ),Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(child: Text("S2",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),)),
      ),Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(child: Text("S3",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),)),
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),

    ]);
    TableRow _tableColumn5 =TableRow(children: <Widget>[
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),

    ]);
    TableRow _tableColumn8 =TableRow(children: <Widget>[
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
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
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),Padding(
        padding: EdgeInsets.all(7.0),
        child: CustomFormField(),
      ),

    ]);
    TableRow _tableColumn15 = TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(20.0),
        child:
            Center(child: Text("First Result")),
      ), Padding(
        padding: EdgeInsets.symmetric(horizontal: 60.w,vertical: 10.h),
        child:
        Center(child: Text("  Completion        date")),
      ),Padding(
        padding: EdgeInsets.all(20.0),
        child:
        Center(child: Text("Instructor                  Name")),
      ),Padding(
        padding: EdgeInsets.all(20.0),
        child:
        Center(child: Text("Istructor           signature")),
      ),Padding(
        padding: EdgeInsets.all(20.0),
        child:
        Center(child: Text("Instructor           code No")),
      ),Padding(
        padding: EdgeInsets.all(20.0),
        child:
        Center(child: Text("Instructor            license")),
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
                borderSide: BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
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