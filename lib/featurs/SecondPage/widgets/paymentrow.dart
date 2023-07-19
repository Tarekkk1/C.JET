import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget paymentRow(
    BuildContext context, String title, String value, bool isSelected) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
      const Spacer(),
      Text("($value)"),
      SizedBox(
        width: 20.w,
      ),
      Stack(
        alignment: Alignment.center,
        children: [
          Container(
            color: isSelected ? const Color(0xFF7CF5A6) : Colors.grey,
            width: 16.w,
            height: 16.h,
          ),
          Visibility(
            visible: isSelected,
            child: Icon(
              Icons.check,
              color: Colors.black,
              size: 14.sp,
            ),
          ),
        ],
      )
    ],
  );
}
