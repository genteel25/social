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

getToken(UserModel user) async {
  await SessionManager().setUserEmail(user.email);
  await SessionManager().setUserName(user.username);
  if (user.ownerImage != null) {
    await SessionManager().setUserProfileImage(user.ownerImage!);
  } else {
    await SessionManager().setUserProfileImage(
        "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60");
  }

  email = await SessionManager().getUserEmail();
  username = await SessionManager().getUserName();
  image = await SessionManager().getUserProfileImage();
  // if (user.ownerImage == null) {
  //   image = '';
  // } else {
  // }
}

setUpdatedToken() async {
  // await SessionManager().setUserEmail(user.email);
  // await SessionManager().setUserName(user.username);
  // await SessionManager().setUserProfileImage(user.ownerImage!);

  email = await SessionManager().getUserEmail();
  username = await SessionManager().getUserName();
  image = await SessionManager().getUserProfileImage();
  // String? token = await SessionManager().getToken();
  // var jwtToken = Jwt.parseJwt(token!);
}
