import 'package:flutter/material.dart';

import 'package:upark_driver/core/resources/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//test
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Upark App Demo',
      routerConfig: AppRouter().router,
      // home: const SplashPage(),
    );
  }
}
