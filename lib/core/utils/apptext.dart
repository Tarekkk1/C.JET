import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

Widget apptext(
    {required String text,
    required Color color,
    required double fontsize,
    required FontWeight fontWeight}) {
  return Text(
    text,
    style: GoogleFonts.sourceSansPro(
      fontWeight: FontWeight.w900,
      fontSize: 16.sp,
    ),
  );
}
