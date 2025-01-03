import 'package:go_router/go_router.dart';
<<<<<<< HEAD
import 'package:upark_driver/features/login/presentation/login_page.dart';
=======

import 'package:upark_driver/features/register/presentation/register_page.dart';
>>>>>>> main

class AppRouter {
  final GoRouter router = GoRouter(
    //this is for initial location of the app
    initialLocation: "/login",
    //other routes/screen for the app
    routes: [
<<<<<<< HEAD
      GoRoute(path: "/login", builder: (context, state) => const LoginPage()),
=======
      GoRoute(
          path: "/register", builder: (context, state) => const RegisterPage()),
>>>>>>> main
    ],
  );
}
