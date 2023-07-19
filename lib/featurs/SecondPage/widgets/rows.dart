import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget rows(BuildContext context) {
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
            "Thorough vacuuming debris and dirt",
            style: TextStyle(
              color: const Color(0xFF010000),
              fontSize: 12.sp,
              fontFamily: GoogleFonts.workSans().fontFamily,
            ),
          ),
        ),
      ],
    ),
  );
}
