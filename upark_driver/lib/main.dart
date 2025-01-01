import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:upark_driver/features/login/presentation/login_page.dart';
import 'package:upark_driver/features/splash/presentation/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
//test
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Upark App Demo',
      routerConfig: _router,

      // home: const SplashPage(),
    );
  }

  final GoRouter _router = GoRouter(
    //this is for initial location of the app
    initialLocation: "/login",
    //other routes/screen for the app
    routes: [
      GoRoute(path: "/", builder: (context, state) => const SplashPage()),
      GoRoute(path: "/login", builder: (context, state) => const LoginPage()),
    ],
  );
}
