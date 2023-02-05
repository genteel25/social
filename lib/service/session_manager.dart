import 'dart:convert';

import 'package:social/util/package_export.dart';

class SessionManager {
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }

  Future<bool> setIsUserLoggedIn() async {
    return getPrefs().then((prefs) => prefs.setBool("login", true));
  }

  Future<bool?> getIsUserLoggedIn() async {
    return getPrefs().then((prefs) => prefs.getBool("login"));
  }

  Future<bool> setToken(String token) async {
    return getPrefs().then((prefs) => prefs.setString("token", token));
  }

  Future<String?> getToken() async {
    return getPrefs().then((prefs) => prefs.getString("token"));
  }

  Future<bool> setFirstTimeUser() async {
    return getPrefs().then((prefs) => prefs.setBool("firstTimeUser", true));
  }

  Future<bool?> getFirstTimeUser() async {
    return getPrefs().then((prefs) => prefs.getBool("firstTimeUser"));
  }

  Future<bool?> logout() async {
    return getPrefs().then((prefs) => prefs.remove("login"));
  }

  Future<bool?> setUserId(String userid) async {
    return getPrefs().then((prefs) => prefs.setString("userId", userid));
  }

  Future<String?> getUserId() async {
    return getPrefs().then((prefs) => prefs.getString("userId"));
  }

  Future<bool?> setUserProfileImage(String image) async {
    // String base64Image = base64Encode(image);
    return getPrefs().then((prefs) => prefs.setString("image", image));
  }

  Future<String?> getUserProfileImage() async {
    return getPrefs().then((prefs) => prefs.getString("image"));
  }

  Future<bool?> setUserName(String name) async {
    // String base64Image = base64Encode(image);
    return getPrefs().then((prefs) => prefs.setString("name", name));
  }

  Future<String?> getUserName() async {
    return getPrefs().then((prefs) => prefs.getString("name"));
  }

  Future<bool?> setUserEmail(String email) async {
    // String base64Image = base64Encode(image);
    return getPrefs().then((prefs) => prefs.setString("email", email));
  }

  Future<String?> getUserEmail() async {
    return getPrefs().then((prefs) => prefs.getString("email"));
  }

  // Future<bool> newUser() async {
  //   return await getPrefs()
  //       .then((prefs) => prefs.setBool(AppStrings.newUser, false));
  // }

  // Future<bool?> getNewUser() {
  //   return getPrefs().then((prefs) => prefs.getBool(AppStrings.newUser));
  // }

  // Future<bool> setSession() async {
  //   return await getPrefs().then((prefs) => prefs.setBool("session", true));
  // }

  // Future<bool?> getSession() {
  //   return getPrefs().then((prefs) => prefs.getBool("session"));
  // }

  // Future<bool> clearSession() {
  //   return getPrefs().then((prefs) => prefs.remove("session"));
  // }

  // Future<bool> setToken(String token) async {
  //   return await getPrefs().then(
  //     (prefs) => prefs.setString("token", token),
  //   );
  // }

  // Future<String?> getToken() async {
  //   return await getPrefs().then(
  //     (prefs) => prefs.getString("token"),
  //   );
  // }

  // Future<bool> clearToken() async {
  //   return await getPrefs().then((prefs) => prefs.remove("token"));
  // }

  // Future<bool> setUserId(String token) async {
  //   return await getPrefs().then(
  //     (prefs) => prefs.setString("id", token),
  //   );
  // }

  // Future<String?> getUserId() async {
  //   return await getPrefs().then(
  //     (prefs) => prefs.getString("id"),
  //   );
  // }

  // Future<bool> setUserEmail(String token) async {
  //   return await getPrefs().then(
  //     (prefs) => prefs.setString("email", token),
  //   );
  // }

  // Future<String?> getUserEmail() async {
  //   return await getPrefs().then(
  //     (prefs) => prefs.getString("email"),
  //   );
  // }
}
