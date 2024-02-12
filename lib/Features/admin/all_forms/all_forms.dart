import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Core/app_color.dart';
import 'package:flight/Core/dimentions/navigator.dart';
import 'package:flight/Features/admin/reverse_form(User).dart';
import 'package:flight/Features/admin/sign_up/controller.dart';
import 'package:flight/Features/admin/sign_up/screen.dart';
import 'package:flight/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../every_form/every_form.dart';

class ShowAllForms extends StatefulWidget {
  ShowAllForms({Key? key, required this.adminID}) : super(key: key);
  String adminID;

  @override
  State<ShowAllForms> createState() => _ShowAllFormsState();
}

class _ShowAllFormsState extends State<ShowAllForms> {
  SignUpController signUpController = SignUpController();

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: ListView.builder(
          itemCount: signUpController.traineeName.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: InkWell(
                onTap: () => RouteUtils.push(
                    context: context,
                    screen: SeeAndPrintForm(
                      traineeName: signUpController.traineeName[index],
                      codeNo: signUpController.codeNo[index],
                    )),
                child: Column(
                  children: [
                    CustomText(
                        text: "Forms", fontSize: 30.sp, color: AppColor.blue29),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: 90.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.sp),
                        color: AppColor.blue29,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CustomText(
                                  text: "Trainee Name: ",
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                ),
                                CustomText(
                                  fontSize: 20.sp,
                                  text: signUpController.traineeName[index],
                                  color: AppColor.white,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                CustomText(
                                  text: "Code No.: ",
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                ),
                                CustomText(
                                  fontSize: 20.sp,
                                  text: signUpController.codeNo[index],
                                  color: AppColor.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ), //"signUpController.traineeName[index]"
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Future<void> getData() async {
    await FirebaseFirestore.instance
        .collection('Admin')
        .doc(widget.adminID)
        .snapshots()
        .forEach((element) {
      if (element.data()?['Trainee Name'] != null &&
          element.data()?['Code Num'] != null) {
        print(element.data()?['Trainee Name']);
        signUpController.traineeName = element.data()?['Trainee Name'];
        signUpController.codeNo = element.data()?['Code Num'];
      }
      setState(() {});
    });
  }
}
