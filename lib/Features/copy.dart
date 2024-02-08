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
