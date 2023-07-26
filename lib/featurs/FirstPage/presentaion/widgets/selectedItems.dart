// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/servicesModel.dart';

Widget selectedItems(
    BuildContext context, int index, int selectedindex, ServiceTypes service) {
  return InkWell(
    child: Container(
      width: 122.w,
      decoration: BoxDecoration(
        color: index != selectedindex
            ? Colors.white
            : const Color.fromARGB(255, 23, 79, 176),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Text(
          service.title!,
          style: TextStyle(
            color: index != selectedindex ? Colors.black : Colors.white,
            fontSize: 16.sp,
            fontFamily: 'WorkSans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
