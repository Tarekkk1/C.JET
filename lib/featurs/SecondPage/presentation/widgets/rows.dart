import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget rows(BuildContext context, String text) {
  return Container(
    alignment: Alignment.centerLeft,
    child: Row(
      children: [
        Icon(
          Icons.check_circle,
          color: Colors.blue,
          size: 12.sp,
        ),
        Container(
          margin: EdgeInsets.only(left: 12.w),
          child: Text(
            text,
            style: TextStyle(
              color: const Color(0xFF010000),
              fontSize: 12.sp,
              fontFamily: 'WorkSans',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    ),
  );
}
