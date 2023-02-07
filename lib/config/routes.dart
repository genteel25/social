import 'package:elegant_notification/elegant_notification.dart';
import 'package:social/controller/bottombar.dart';
import 'package:social/controller/search.dart';
import 'package:social/util/util.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: AppStrings.welcome,
      path: "/",
      redirect: (_, state) async {
        bool? loggedIn = await SessionManager().getIsUserLoggedIn();
        bool? firstTime = await SessionManager().getFirstTimeUser();
        if (loggedIn == true) {
          ElegantNotification.info(
              description: const Text("Logged in successful"));
          return "/bottombar";
        } else if (firstTime == true) {
          return "/login";
        }
        return null;
      },
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
    GoRoute(
      name: AppStrings.search,
      path: "/search",
      builder: (context, state) => const SearchScreen(),
    ),
  ],
);
