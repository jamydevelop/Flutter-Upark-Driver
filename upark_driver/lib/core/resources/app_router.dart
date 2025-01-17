import 'package:go_router/go_router.dart';
import 'package:upark_driver/features/bottom_nav/presentation/bottom_nav.page.dart';
import 'package:upark_driver/features/forgot_password/presentation/forgot_password.page.dart';
import 'package:upark_driver/features/home/presentation/home.page.dart';
import 'package:upark_driver/features/login/presentation/login.page.dart';
import 'package:upark_driver/features/onboarding/presentation/onboarding.page.dart';
import 'package:upark_driver/features/register/presentation/register.page.dart';
import 'package:upark_driver/features/splash/presentation/splash.page.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    //this is for initial location of the app
    initialLocation: "/bottomnav",
    //other routes/screen for the app
    routes: [
      GoRoute(path: "/splash", builder: (context, state) => const SplashPage()),
      GoRoute(path: "/login", builder: (context, state) => const LoginPage()),
      GoRoute(
          path: "/register", builder: (context, state) => const RegisterPage()),
      GoRoute(
          path: "/onboarding", builder: (context, state) => OnboardingPage()),
      GoRoute(
          path: "/forgotpassword",
          builder: (context, state) => const ForgotPasswordPage()),
      GoRoute(
          path: "/bottomnav",
          builder: (context, state) => const BottomNavPage()),
      GoRoute(path: "/home", builder: (context, state) => const HomePage()),
    ],
  );
}
