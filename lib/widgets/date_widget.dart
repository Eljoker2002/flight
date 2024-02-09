import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDate extends StatefulWidget {
  const CustomDate({Key? key}) : super(key: key);

  @override
  State<CustomDate> createState() => _CustomDateState();
}

class _CustomDateState extends State<CustomDate> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () async {
          final DateTime? dateTime = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(2000),
            lastDate: DateTime(3000),
          );
          if (dateTime != null) {
            setState(() {
              selectedDate = dateTime;
            });
          }
        },
        child: Center(
          child: Text(
            "${selectedDate.day}    /    ${selectedDate.month}    /    ${selectedDate.year}",
            style: TextStyle(fontSize: 13.sp),
          ),
        ),
      ),
    );
  }
}
