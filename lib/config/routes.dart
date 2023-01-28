import 'package:social/controller/bottombar.dart';
import 'package:social/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: AppStrings.welcome,
      path: "/",
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      name: AppStrings.login,
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: AppStrings.signup,
      path: "/signup",
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      name: AppStrings.bottombar,
      path: "/bottombar",
      builder: (context, state) => const BottomBarScreen(),
    ),
  ],
);
