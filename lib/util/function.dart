import 'package:jwt_decode/jwt_decode.dart';
import 'package:social/model/user_model.dart';
import 'package:social/util/global_variables.dart';
import 'package:social/util/package_export.dart';
import 'package:social/util/util.dart';

Padding paddingWidget(
    {required double width, double? height, required Widget child}) {
  return Padding(
    padding: REdgeInsets.symmetric(horizontal: width, vertical: height!),
    child: child,
  );
}

List<Map<String, dynamic>> jobs = [
  {
    "image": "assets/svg/google.svg",
    "name": "google",
    "title": "Lead Product Manager",
    "salary": "2500",
    "location": "Ibdan, Nigeria",
  },
  {
    "image": "assets/svg/netflix.svg",
    "name": "Netflix",
    "title": "Senior UI Designer",
    "salary": "2000",
    "location": "Abuja, Nigeria",
  },
];

List<Map<String, dynamic>> popularJobs = [
  {
    "image": "assets/svg/google.svg",
    "name": "google",
    "title": "Lead Product Manager",
    "salary": "2500",
    "jobType": "Full Time",
  },
  {
    "image": "assets/svg/netflix.svg",
    "name": "Netflix",
    "title": "Senior UI Designer",
    "salary": "2000",
    "jobType": "Remote",
  },
  {
    "image": "assets/svg/facebook.svg",
    "name": "Facebook",
    "title": "Senior Backend Developer",
    "salary": "3500",
    "jobType": "Full Time",
  },
  {
    "image": "assets/svg/spotify.svg",
    "name": "Spotify",
    "title": "Senior Software Developer",
    "salary": "3500",
    "jobType": "Remote",
  },
];

handleDioError(DioError error) {
  String errorDescription = "";
  switch (error.type) {
    case DioErrorType.cancel:
      errorDescription = "Request to server was cancelled";
      break;
    case DioErrorType.connectTimeout:
      errorDescription = "Connection timeout with server";
      break;
    case DioErrorType.other:
      errorDescription =
          "Connection to server failed due to internet connection";
      break;
    case DioErrorType.receiveTimeout:
      errorDescription = "Receive timeout in connection with server";
      break;
    case DioErrorType.sendTimeout:
      errorDescription = "Send Timeout in connection with Server";
      break;
    case DioErrorType.response:
      errorDescription =
          "Something went wrong and your request could not be completed";
      break;
  }
  return errorDescription;
}

getToken() async {
  String? token = await SessionManager().getToken();
  var jwtToken = Jwt.parseJwt(token!);
  // setState(() {
  userInfo = jwtToken;
  if (userInfo!['email'] != null) {
    await SessionManager().setUserEmail(userInfo!['email']);
    email = await SessionManager().getUserEmail();
  }
  if (userInfo!['username'] != null) {
    await SessionManager().setUserName(userInfo!['username']);
    username = await SessionManager().getUserName();
  }
  if (userInfo!['image'] != null) {
    await SessionManager().setUserProfileImage(userInfo!['image']);
    image = await SessionManager().getUserProfileImage();
  }

  // });
}

setUpdatedToken(UserModel user) async {
  await SessionManager().setUserEmail(user.email);
  await SessionManager().setUserName(user.username);
  await SessionManager().setUserProfileImage(user.ownerImage!);

  email = await SessionManager().getUserEmail();
  username = await SessionManager().getUserName();
  image = await SessionManager().getUserProfileImage();
}
