import 'package:cjet/core/utils/iamges.dart';
import 'package:cjet/featurs/SecondPage/widgets/rows.dart';
import 'package:cjet/featurs/SecondPage/widgets/secondpagebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/addtocart.dart';
import '../widgets/paymentrow.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Set<int> selectedItems = {};
  // ignore: non_constant_identifier_names
  void HandelSelection(int index) {
    if (selectedItems.contains(index)) {
      selectedItems.remove(index);
    } else {
      selectedItems.add(index);
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEFF9FE),
        body: Container(
            margin: EdgeInsets.only(
                top: 76.h, left: 24.w, right: 24.w, bottom: 88.h),
            child: Column(children: [
              secondPageBar(context),
              SizedBox(
                height: 34.h,
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
                  Container(
                    width: double.infinity,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      color: const Color.fromARGB(172, 172, 235, 194),
                      border: Border.all(
                        color: const Color.fromARGB(174, 119, 240, 161),
                        width: 1.w,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 12.w,
                        ),
                        Text(
                          "Current Working Hours: 9 PM - 7 AM",
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF010000),
                            fontSize: 14.sp,
                          ),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        const Icon(
                          Icons.info_outline_rounded,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Image.asset(
                    AppImages.carcleaning,
                    height: 182.h,
                    width: 327.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "What's included",
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF010000),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 24.w, right: 27.w, top: 18.h, bottom: 18.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      color: const Color(0xFFFFFFFF),
                    ),
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        SizedBox(height: 14.h, child: rows(context)),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(height: 14.h, child: rows(context)),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(height: 14.h, child: rows(context)),
                        SizedBox(
                          height: 12.h,
                        ),
                        SizedBox(height: 14.h, child: rows(context)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Part to wash:",
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.w800,
                        color: const Color(0xFF010000),
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "(Min. 1 - Max. 3)",
                      style: TextStyle(
                        fontFamily: 'WorkSans',
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF9397A0),
                        fontSize: 10.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: 24.w, right: 27.w, top: 20.h, bottom: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12.r)),
                      color: const Color(0xFFFFFFFF),
                    ),
                    child: Expanded(
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => InkWell(
                              onTap: () => {HandelSelection(index)},
                              child: paymentRow(context, "Carpet", "EGP 100",
                                  selectedItems.contains(index))),
                          separatorBuilder: (context, index) => Container(
                                height: 1.h,
                                margin:
                                    EdgeInsets.only(top: 20.h, bottom: 20.h),
                                color: Colors.grey[300],
                              ),
                          itemCount: 8),
                    ),
                  ),
                ])),
              ),
            ])),
        bottomSheet: Container(
          height: 88.h,
          width: 375.w,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12.r),
              topLeft: Radius.circular(12.r),
            ),
          ),
          child: Row(children: [
            SizedBox(
                width: 375.w,
                height: 88.h,
                child: Stack(
                  children: [
                    Visibility(
                      visible: selectedItems.isNotEmpty,
                      child: Positioned(
                        top: 12.h,
                        left: 24.w,
                        child: Text(
                          "Subtotal",
                          style: TextStyle(
                            fontFamily: GoogleFonts.workSans().fontFamily,
                            color: const Color(0xFF9397A0),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: selectedItems.isNotEmpty,
                      child: Positioned(
                        top: 33.h,
                        left: 24.w,
                        child: Text("EGP ${selectedItems.length * 100}",
                            style: TextStyle(
                              color: const Color(0xFF010000),
                              fontSize: 18.sp,
                              fontFamily: 'WorkSans',
                              fontWeight: FontWeight.w800,
                            )),
                      ),
                    ),
                    Positioned(right: 24.w, top: 15.h, child: addtocart())
                  ],
                ))
          ]),
        ));
  }
}
