import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget subscribe() {
  return Container(
    width: 92.w,
    height: 30.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        color: const Color(0xFF7CF5A6)),
    child: Center(
      child: Text(
        'Subscribe',
        style: TextStyle(
          color: Colors.black,
          fontSize: 12.sp,
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
