import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget secondPageBar(BuildContext context) {
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(42.r),
          color: Colors.white,
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
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
      ),
      Center(
        child: Text(AppLocalizations.of(context)!.carCare,
            style: TextStyle(
              fontFamily: 'WorkSans',
              fontWeight: FontWeight.w900,
              color: const Color(0xFF010000),
              fontSize: 18.sp,
            )),
      )
    ],
  );
}
