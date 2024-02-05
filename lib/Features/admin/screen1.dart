import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstScreenAdmin extends StatelessWidget {
  const FirstScreenAdmin({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
              itemCount: 3,
              itemBuilder: (context, index) {
                return TextFormField(
                  onSaved: (newValue) {

                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}