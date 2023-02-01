import 'package:social/util/package_export.dart';

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
