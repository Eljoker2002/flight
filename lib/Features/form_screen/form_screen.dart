import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TableRow _tableRow=const TableRow(

      children: <Widget>[
        Padding(padding: EdgeInsets.all(10.0),
          child: Text("Content1"),
        ),

      ]
    );
    TableRow _tableColumn1=const TableRow(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),

          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),

        ]
    );
    TableRow _tableColumn2=const TableRow(

        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Sectors"),
          ),

          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
        ]
    );
    TableRow _tableColumn3=const TableRow(

        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),

          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
          Padding(padding: EdgeInsets.all(10.0),
            child: Text("Content2"),
          ),
        ]
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
             Table(
               border: TableBorder.all(width: 1.w),
               children: <TableRow>[
                 _tableRow,
               ],
             ),
              Table(
                border: TableBorder.all(width: 1.w),
                children: <TableRow>[
                 _tableColumn1,
                ],
              ),Table(
                border: TableBorder.all(width: 1.w),
                children: <TableRow>[
                 _tableRow,
                ],
              ),Table(
        border: TableBorder.all(width: 1.w),
        children: <TableRow>[
          _tableColumn2]),
              Table(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
