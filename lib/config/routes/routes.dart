import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../featurs/FirstPage/pages/firstpage.dart';
import '../../featurs/SecondPage/pages/secondpage.dart';

class Routes {
  static const String firstpage = "/";
  static const String secondpage = '/secondpage';
}

class AppRoutes {
  static onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.firstpage:
        return MaterialPageRoute(
          builder: (_) => ScreenUtilInit(
            designSize: const Size(375, 812),
            builder: (context, child) => const FirstPage(),
          ),
        );

      case Routes.secondpage:
        return MaterialPageRoute(
            builder: (_) => ScreenUtilInit(
                  designSize: const Size(375, 724),
                  // Design size for the second page
                  builder: (context, child) => const SecondPage(),
                ));
    }
  }
}
