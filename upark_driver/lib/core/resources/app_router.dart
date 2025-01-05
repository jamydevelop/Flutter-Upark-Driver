import 'package:go_router/go_router.dart';
import 'package:upark_driver/features/login/presentation/login_page.dart';
import 'package:upark_driver/features/register/presentation/register_page.dart';
import 'package:upark_driver/features/splash/presentation/splash_page.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    //this is for initial location of the app
    initialLocation: "/register",
    //other routes/screen for the app
    routes: [
      GoRoute(path: "/splash", builder: (context, state) => const SplashPage()),
      GoRoute(path: "/login", builder: (context, state) => const LoginPage()),
      GoRoute(
          path: "/register", builder: (context, state) => const RegisterPage()),
    ],
  );
}
