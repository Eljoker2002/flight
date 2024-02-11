import 'package:cloud_firestore/cloud_firestore.dart';
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
  String? traineeName;
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 16.w, right: 16.w),
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
                      date: '',
                    )),
                child: Container(
                  color: Colors.grey,
                  width: double.infinity,
                  height: 50.h,
                  child: Row(
                    children: [
                      CustomText(
                        fontSize: 20.sp,
                        text: signUpController.traineeName[index],
                      ),
                      Spacer(),
                      CustomText(text: '25/2/2024', fontSize: 20.sp)
                    ],
                  ), //"signUpController.traineeName[index]"
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
      if (element.data()?['Trainee Name'] != null) {
        signUpController.traineeName = element.data()?['Trainee Name'];
        print(signUpController.traineeName);
      }
      setState(() {});
    });
  }
}
