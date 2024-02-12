import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight/Core/app_color.dart';
import 'package:flight/Core/dimentions/navigator.dart';
import 'package:flight/Features/admin/reverse_form(User).dart';
import 'package:flight/Features/admin/sign_up/controller.dart';
import 'package:flight/Features/admin/sign_up/screen.dart';
import 'package:flight/widgets/text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompetencyScreen extends StatefulWidget {
  CompetencyScreen({
    Key? key,
    required this.id,
  }) : super(key: key);
  String id;

  @override
  State<CompetencyScreen> createState() => _CompetencyScreenState();
}

class _CompetencyScreenState extends State<CompetencyScreen> {
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
                    screen: ReverseFormFromAdmin(
                      traineeName: signUpController.traineeName[index],
                      date: signUpController.date[index],
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
                            Row(
                              children: [
                                CustomText(
                                  text: "Date: ",
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                ),
                                CustomText(
                                  text: signUpController.date[index],
                                  fontSize: 20.sp,
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
        .collection('Users')
        .doc(widget.id)
        .snapshots()
        .forEach((element) {
      if (element.data()?['Trainee Name'] != null &&
          element.data()?['Date'] != null &&
          element.data()?['Code Num'] != null) {
        signUpController.traineeName = element.data()?['Trainee Name'];
        signUpController.date = element.data()?['Date'];
        signUpController.codeNo = element.data()?['Code Num'];
      }
      setState(() {});
    });
  }
}
