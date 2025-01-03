import 'package:go_router/go_router.dart';

import 'package:upark_driver/features/register/presentation/register_page.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    //this is for initial location of the app
    initialLocation: "/register",
    //other routes/screen for the app
    routes: [
      GoRoute(
          path: "/register", builder: (context, state) => const RegisterPage()),
    ],
  );
}
