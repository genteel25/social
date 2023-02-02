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
