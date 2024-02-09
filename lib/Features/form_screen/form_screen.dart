// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class FormScreen extends StatelessWidget {
//   FormScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     TableRow _tableRow = const TableRow(children: <Widget>[
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content1"),
//       ),
//     ]);
//     TableRow _tableColumn1 = const TableRow(children: <Widget>[
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//     ]);
//     TableRow _tableColumn2 = const TableRow(children: <Widget>[
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Sectors"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//     ]);
//     TableRow _tableColumn3 = const TableRow(children: <Widget>[
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//       Padding(
//         padding: EdgeInsets.all(10.0),
//         child: Text("Content2"),
//       ),
//     ]);
//
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//       ),
//       body: Align(
//         alignment: Alignment.center,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Column(
//                   children: [
//                     Table(
//                       defaultColumnWidth: FixedColumnWidth(500.0),
//                       border: TableBorder.all(width: 1.w),
//                       children: <TableRow>[
//                         _tableRow,
//                       ],
//                     ),
//                     Table(
//                       defaultColumnWidth: FixedColumnWidth(400.0),
//                       border: TableBorder.all(width: 1.w),
//                       children: <TableRow>[
//                         _tableColumn1,
//                       ],
//                     ),
//                     Table(
//                       defaultColumnWidth: FixedColumnWidth(400.0),
//                       border: TableBorder.all(width: 1.w),
//                       children: <TableRow>[
//                         _tableRow,
//                       ],
//                     ),
//                     Table(
//                         defaultColumnWidth: FixedColumnWidth(200.0),
//                         border: TableBorder.all(width: 1.w),
//                         children: <TableRow>[_tableColumn2]),
//                     Table(
//                       defaultColumnWidth: FixedColumnWidth(200.0),
//                       border: TableBorder.all(width: 1.w),
//                       children: <TableRow>[
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                         _tableColumn3,
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
