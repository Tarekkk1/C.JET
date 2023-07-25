import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget appbarwidget(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 76.h, bottom: 24.h),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(145, 255, 255, 255),
            borderRadius: BorderRadius.circular(42.r),
            border: Border.all(
              color: const Color.fromARGB(255, 228, 228, 209),
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
          child: Text(
            AppLocalizations.of(context)!.services,
            style: TextStyle(
              fontFamily: 'WorkSans',
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 18.sp,
            ),
          ),
        ),
      ],
    ),
  );
}
