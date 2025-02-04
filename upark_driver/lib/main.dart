import 'package:flutter/material.dart';
import 'package:upark_driver/core/resources/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: "Roboto"),
      title: 'Upark App Demo',
      routerConfig: AppRouter().router,
      // home: const SplashPage(),
    );
  }
}
