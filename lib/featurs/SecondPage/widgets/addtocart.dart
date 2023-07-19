import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget addtocart() {
  return Container(
    width: 148.w,
    height: 36.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        color: const Color(0xFF7CF5A6)),
    child: Center(
      child: Text(
        'Add to cart',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          fontFamily: GoogleFonts.workSans().fontFamily,
        ),
      ),
    ),
  );
}
