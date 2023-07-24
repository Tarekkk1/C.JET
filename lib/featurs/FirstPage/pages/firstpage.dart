import 'package:cjet/core/utils/appcolors.dart';
import 'package:cjet/core/utils/iamges.dart';
import 'package:cjet/featurs/FirstPage/widgets/appbar.dart';
import 'package:cjet/featurs/FirstPage/widgets/maincontainer.dart';
import 'package:cjet/featurs/FirstPage/widgets/selectedItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedItemIndex = 0;

  void handleSelection(int index) {
    setState(() {
      selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.background),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24.w, right: 24.w),
            child: Column(
              children: [
                appbarwidget(context),
                Container(
                  width: double.infinity,
                  height: 2.h,
                  margin: EdgeInsetsDirectional.only(bottom: 29.h),
                  color: Colors.grey[300],
                ),
                SizedBox(
                  height: 31.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 18.w),
                        child: InkWell(
                            onTap: () {
                              handleSelection(index);
                            },
                            child: selectedItems(
                                context, index, selectedItemIndex, "Packages")),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return maincontainer(context, "Advanced", 5, 350);
                    },
                  ),
                )
              ],
            ),
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: const Color(0xFF58595B),
          unselectedItemColor: const Color(0xFF58595B),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: AppColors.bottomBarColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: "Cart",
                backgroundColor: AppColors.bottomBarColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.book_online),
                label: "Bookings",
                backgroundColor: AppColors.bottomBarColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: AppColors.bottomBarColor),
          ],
        ));
  }
}
