import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:upark_driver/core/resources/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//test
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.white),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white, fontFamily: "Roboto"),
        title: 'Upark App Demo',
        routerConfig: AppRouter().router,
        // home: const SplashPage(),
      ),
    );
  }
}
