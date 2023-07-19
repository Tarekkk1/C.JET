import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget selectedItems(
    BuildContext context, int index, int selectedindex, String text1) {
  return InkWell(
    child: Container(
        width: 122.w,
        decoration: BoxDecoration(
          color: index != selectedindex ? Colors.white : Colors.blueAccent,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Expanded(
          child: Center(
            child: Text(
              text1,
              style: TextStyle(
                color: index != selectedindex ? Colors.black : Colors.white,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.workSans().fontFamily,
              ),
            ),
          ),
        )),
  );
}
