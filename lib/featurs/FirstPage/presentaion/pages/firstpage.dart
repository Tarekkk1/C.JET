import 'package:cjet/core/utils/appcolors.dart';
import 'package:cjet/core/utils/iamges.dart';
import 'package:cjet/featurs/FirstPage/presentaion/manger/cubit.dart';
import 'package:cjet/featurs/FirstPage/presentaion/manger/firstpagestates.dart';
import 'package:cjet/featurs/FirstPage/presentaion/widgets/appbar.dart';
import 'package:cjet/featurs/FirstPage/presentaion/widgets/maincontainer.dart';
import 'package:cjet/featurs/FirstPage/presentaion/widgets/selectedItems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/data_sources/remotefirstpage.dart';

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
    return BlocProvider(
        create: (context) {
          RemoteFirstPage remoteFirstPage = RemoteFirstPage();

          return FirstPageCublit(remoteFirstPage);
        },
        child: BlocConsumer<FirstPageCublit, FirsPageState>(
            listener: (context, state) {
          if (state is ServicesMangerError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("error in get services ${state.message}"),
              ),
            );
          }
        }, builder: (context, state) {
          if (state is! ServicesMangerLoaded) {
            FirstPageCublit.get(context).getServices();
          }
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
                      if (state is ServicesMangerLoading)
                        const Center(
                          child: CircularProgressIndicator(),
                        ),
                      if (state is ServicesMangerLoaded)
                        SizedBox(
                          height: 31.h,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                state.servicesModel.data!.serviceTypes?.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(right: 18.w),
                                child: InkWell(
                                    onTap: () {
                                      handleSelection(index);
                                    },
                                    child: selectedItems(
                                        context,
                                        index,
                                        selectedItemIndex,
                                        state.servicesModel.data!
                                            .serviceTypes![index])),
                              );
                            },
                          ),
                        ),
                      SizedBox(
                        height: 24.h,
                      ),
                      if (state is ServicesMangerLoaded)
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: state.servicesModel.data!.serviceTypes!
                                .elementAt(selectedItemIndex)
                                .services!
                                .length,
                            itemBuilder: (BuildContext context, int index) {
                              return maincontainer(
                                  context,
                                  state
                                      .servicesModel
                                      .data!
                                      .serviceTypes![selectedItemIndex]
                                      .services![index]);
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
        }));
  }
}
