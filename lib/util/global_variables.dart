import './util.dart';

Repository repository = ProvideRepository().provideRepository();

List<Map<String, dynamic>> onboarding = [
  {
    "image": "assets/images/onb1.png",
    "content": "Life is short and the world is wide",
    "description":
        "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
  },
  {
    "image": "assets/images/onb2.png",
    "content": "It's a big world out there go explore",
    "description":
        "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
  },
  {
    "image": "assets/images/onb3.png",
    "content": "People don't take trips, trips take people",
    "description":
        "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
  },
];

bool? newUser = true;
bool? isLoggedIn = false;
