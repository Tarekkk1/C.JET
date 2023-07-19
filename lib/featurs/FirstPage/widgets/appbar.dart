import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appbarwidget(BuildContext context) {
  return Container(
    color: const Color.fromARGB(0, 0, 0, 0),
    margin: EdgeInsets.only(top: 76.h, bottom: 24.h),
    child: Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(42.r),
            color: const Color(0x0ff10000),
            border: Border.all(
              color: const Color(0xFFFFFFD6),
              width: 1.w,
            ),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(left: 84.w),
            child: Text(
              'Services',
              style: TextStyle(
                fontFamily: GoogleFonts.workSans().fontFamily,
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
