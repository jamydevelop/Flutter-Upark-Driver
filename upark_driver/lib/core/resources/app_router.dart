import 'package:go_router/go_router.dart';
import 'package:upark_driver/features/bottom_nav/presentation/bottom_nav_page.dart';
import 'package:upark_driver/features/change_password/presentation/change_password_page.dart';
import 'package:upark_driver/features/edit_profile/presentation/edit_profile_page.dart';
import 'package:upark_driver/features/favorites/presentation/favorites_page.dart';
import 'package:upark_driver/features/forgot_password/presentation/forgot_password_page.dart';
import 'package:upark_driver/features/login/presentation/login_page.dart';
import 'package:upark_driver/features/notifications/presentation/notifications_page.dart';
import 'package:upark_driver/features/onboarding/presentation/onboarding_page.dart';
import 'package:upark_driver/features/parking_spaces/presentation/parking_spaces_page.dart';
import 'package:upark_driver/features/register/presentation/register_page.dart';
import 'package:upark_driver/features/splash/presentation/splash_page.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    //this is for initial location of the app
    initialLocation: "/change-password",
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
        path: "/bottomnav/:index",
        builder: (context, state) {
          final index = int.tryParse(state.pathParameters['index'] ?? '0') ?? 0;
          return BottomNavPage(initialIndex: index);
        },
      ),
      GoRoute(
          path: "/edit-profile",
          builder: (context, state) => const EditProfilePage()),
      GoRoute(
          path: "/parking-spaces",
          builder: (context, state) => const ParkingSpacesPage()),
      GoRoute(
          path: "/favorites",
          builder: (context, state) => const FavoritesPage()),
      GoRoute(
          path: "/notifications",
          builder: (context, state) => const NotificationsPage()),
      GoRoute(
          path: "/change-password",
          builder: (context, state) => const ChangePasswordPage()),
    ],
  );
}
