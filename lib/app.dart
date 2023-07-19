import 'package:flutter/material.dart';

import 'config/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
    );
  }
}
