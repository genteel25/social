import 'package:social/controller/login.dart';
import 'package:social/controller/welcome.dart';
import 'package:social/util/package_export.dart';
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
  ],
);
