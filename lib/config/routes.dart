import 'package:social/controller/welcome.dart';
import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: AppStrings.welcome,
      path: "/",
      builder: (context, state) => const WelcomeScreen(),
    )
  ],
);
