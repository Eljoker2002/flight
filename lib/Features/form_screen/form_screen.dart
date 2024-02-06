import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:image_picker/image_picker.dart';
import 'package:printing/printing.dart';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

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
    final picker = ImagePicker();
    final pdf = pw.Document();
    File _image;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
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
                    onPressed: () {},
                    child: Text('Save and Print PDF'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
