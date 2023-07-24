import 'package:cjet/featurs/FirstPage/widgets/subscribe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget maincontainer(BuildContext context, String text, int days, int cost) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.r),
      boxShadow: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(0, 2),
          blurRadius: 6.0,
        ),
      ],
    ),
    margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
    padding: EdgeInsets.only(right: 12.w, left: 12.w, top: 18.h, bottom: 18.h),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        text,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20.sp,
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w900,
        ),
      ),
      SizedBox(
        height: 6.h,
      ),
      Text(
        "Glem Car wash $days days per week",
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16.sp,
          fontFamily: 'WorkSans',
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      Row(
        children: [
          Text(
            "$cost EGP / Month",
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.sp,
              fontFamily: 'WorkSans',
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 30.h,
            width: 92.w,
            child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/secondpage');
                },
                child: subscribe()),
          )
        ],
      ),
    ]),
  );
}
