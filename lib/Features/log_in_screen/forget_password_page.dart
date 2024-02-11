// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flight/Core/app_color.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ForgetPassword extends StatefulWidget {
//   const ForgetPassword({super.key});
//
//   @override
//   State<ForgetPassword> createState() => _ForgetPasswordState();
// }
//
// class _ForgetPasswordState extends State<ForgetPassword> {
//   final _emailController = TextEditingController();
//   @override
//   void dispose(){
//     _emailController.dispose();
//     super.dispose();
//   }
//  Future passwordReset() async{
//  //    try{
//  //      await FirebaseFirestore.instance.sendPasswordResetEmail(email:_emailController.text.trim());
//  //    }on FirebaseFirestoreException
//  // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: AppColor.blue29,
//         leading: Icon(
//           Icons.arrow_back_ios,
//           color: AppColor.white,
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 60.w),
//             child: Text(
//             style: GoogleFonts.poppins(
//             textStyle:TextStyle(
//             color: AppColor.blue29,
//             fontSize: 13.sp,
//             fontWeight: FontWeight.w700,
//             ),
//     ),
//               "Enter Your Email and we will send you a password reset link",
//               textAlign: TextAlign.center,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(18.0.sp),
//             child: TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: AppColor.white),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: AppColor.blue29),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   hintText: "ID",
//                   hintStyle: TextStyle(
//                       color: AppColor.blue29,
//                       fontWeight: FontWeight.w700,
//                       fontSize: 15.sp),
//                   fillColor: Colors.grey[200],
//                   filled: true),
//             ),
//           ),
//           MaterialButton(
//             onPressed: passwordReset,
//             child: Text(
//               "Reset Password",
//               style: GoogleFonts.poppins(
//                 textStyle: TextStyle(
//                   color: AppColor.white,
//                   fontSize: 12.sp,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//             ),
//             color: AppColor.blue29,
//           )
//         ],
//       ),
//     );
//   }
// }
