import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';
import 'dart:io';

class MyHomePage extends StatelessWidget {
  // pw.Widget _buildPdfContent() {
  //   return pw.Container(
  //     alignment: pw.Alignment.center,
  //     child: pw.Text('Hello World!', style: pw.TextStyle(fontSize: 20)),
  //   );
  // }
  pw.TableRow _tableRow = pw.TableRow(children: <pw.Widget>[
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content1"),
    ),
  ]);
  pw.TableRow _tableColumn1 = pw.TableRow(children: <pw.Widget>[
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
  ]);
  pw.TableRow _tableColumn2 = pw.TableRow(children: <pw.Widget>[
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Sectors"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
  ]);
  pw.TableRow _tableColumn3 = pw.TableRow(children: <pw.Widget>[
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
    pw.Padding(
      padding: pw.EdgeInsets.all(10.0),
      child: pw.Text("Content2"),
    ),
  ]);

  //////////////
  Future<void> _saveAndPrintPdf() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build: (context) {
          return pw.Column(
            children: [
              pw.Table(
                defaultColumnWidth: pw.FixedColumnWidth(1284.w),
                border: pw.TableBorder.all(width: 1.w),
                children: <pw.TableRow>[
                  pw.TableRow(children: [
                    pw.Container(
                      width: double.infinity,
                      height: 50.h,
                      child: pw.Center(
                        child: pw.Text(
                          "CABIN CREW INFLIGHT COMPETENCY CHECK",
                          style: pw.TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              pw.Table(
                defaultColumnWidth: pw.FixedColumnWidth(642.w),
                border: pw.TableBorder.all(width: 1.w),
                children: <pw.TableRow>[
                  _tableColumn1,
                ],
              ),
              pw.Table(
                defaultColumnWidth: pw.FixedColumnWidth(1284.w),
                border: pw.TableBorder.all(width: 1.w),
                children: <pw.TableRow>[
                  _tableRow,
                ],
              ),
              pw.Table(
                  defaultColumnWidth: pw.FixedColumnWidth(200.0),
                  border: pw.TableBorder.all(width: 1.w),
                  children: <pw.TableRow>[_tableColumn2]),
              pw.Table(
                defaultColumnWidth: pw.FixedColumnWidth(200.0),
                border: pw.TableBorder.all(width: 1.w),
                children: <pw.TableRow>[
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
            ],
          );
        },
      ),
    );
    final Uint8List bytes = await pdf.save();
    // Save the PDF to a file
    final appDocDir = await getApplicationDocumentsDirectory();
    final appDocPath = appDocDir.path;
    final file = File('$appDocPath/example.pdf');
    await file.writeAsBytes(bytes);
    // Print the PDF using the printing package
    await Printing.layoutPdf(
      onLayout: (format) async => bytes,
      name: 'example.pdf',
    );
  }

  @override
  Widget build(BuildContext context) {
    TableRow _tableRow = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content1"),
      ),
    ]);
    TableRow _tableColumn1 = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
    ]);
    TableRow _tableColumn2 = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Sectors"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
    ]);
    TableRow _tableColumn3 = const TableRow(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text("Content2"),
      ),
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Save and Print Example'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    Table(
                      defaultColumnWidth: FixedColumnWidth(1284.w),
                      border: TableBorder.all(width: 1.w),
                      children: <TableRow>[
                        TableRow(children: [
                          Container(
                            width: double.infinity,
                            height: 50.h,
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
                      defaultColumnWidth: FixedColumnWidth(642.w),
                      border: TableBorder.all(width: 1.w),
                      children: <TableRow>[
                        _tableColumn1,
                      ],
                    ),
                    Table(
                      defaultColumnWidth: FixedColumnWidth(1284.w),
                      border: TableBorder.all(width: 1.w),
                      children: <TableRow>[
                        _tableRow,
                      ],
                    ),
                    Table(
                        defaultColumnWidth: FixedColumnWidth(200.0),
                        border: TableBorder.all(width: 1.w),
                        children: <TableRow>[_tableColumn2]),
                    Table(
                      defaultColumnWidth: FixedColumnWidth(200.0),
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
                    ElevatedButton(
                      onPressed: () {
                        _saveAndPrintPdf();
                      },
                      child: Text('Save and Print PDF'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
