import 'package:fpdart/fpdart.dart';
import 'package:social/util/util.dart';

class ApiService {
  static Future<Dio> _dio() async {
    return Dio(
      BaseOptions(
        baseUrl: "http://localhost:2000/api/v1/",
        receiveTimeout: 15000,
        sendTimeout: 15000,
        connectTimeout: 15000,
        headers: await SessionManager().getIsUserLoggedIn() != true
            ? null
            : {"Authorization": "Bearer ${await getToken()}"},
      ),
    );
  }

  static final ApiService _instance = ApiService._internal();

  factory ApiService() {
    return _instance;
  }

  static Future<String?> getToken() async {
    return await SessionManager().getToken();
  }

  // static Future<String> getBaseUrl() async {
  //   String? url = await AppPrefs().getBaseUrl();

  //   if (url != null) {
  //     return '$url/';
  //   }
  //   return baseUrl;
  // }

  ApiService._internal();

  Future<Response> doGetRequest(String endPoint) async {
    return await _dio().then((value) {
      return value.get(endPoint);
    });
  }

  Future<Response> doPostRequest(
      String endPoint, Map<String, dynamic> data) async {
    return await _dio().then((value) {
      return value.post(endPoint, data: data);
    });
  }

  Future<ApiResponse> signIn(String email, String password) async {
    try {
      Response response = await doPostRequest(
          "/auth/signin", {"email": email, "password": password});
      var result = response.data;
      if (response.statusCode == 201 || response.statusCode == 200) {
        return ApiResponse(
          status: true,
          message: result['message'],
          token: result['token'],
        );
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        return ApiResponse(
          status: result['status'],
          message: result['message'],
        );
      } else {
        return ApiResponse(
          status: result['status'],
          message: result['message'],
        );
      }
    } on DioError catch (e) {
      return ApiResponse(
        status: false,
        message: handleDioError(e),
      );
    }
  }

  Future<ApiResponse> signUp(
      String username, String email, String password) async {
    try {
      Response response = await doPostRequest("/auth/signup",
          {"email": email, "password": password, "username": username});
      var result = response.data;
      if (response.statusCode == 201 || response.statusCode == 200) {
        return ApiResponse(
          status: true,
          message: result['message'],
          token: result['token'],
        );
      } else if (response.statusCode == 400 || response.statusCode == 401) {
        return ApiResponse(
          status: result['status'],
          message: result['message'],
        );
      } else {
        return ApiResponse(
          status: result['status'],
          message: result['message'],
        );
      }
    } on DioError catch (e) {
      return ApiResponse(
        status: false,
        message: handleDioError(e),
      );
    }
  }

  Future<Either<String, List<JobResponse>>> getJobs() async {
    try {
      Response response = await doGetRequest("/job/get_all_jobs");
      if (response.statusCode == 201 || response.statusCode == 200) {
        List<dynamic> newResponse = response.data;
        List<JobResponse> reserveResponse =
            newResponse.map((e) => JobResponse.fromJson(e)).toList();
        return Right(reserveResponse);
      } else if (response.statusCode == 400 ||
          response.statusCode == 401 ||
          response.statusCode == 404) {
        return Left(
          handleDioError(response.data['message']),
        );
      } else {
        return left("Something went wrong");
      }
    } on DioError catch (e) {
      return left(handleDioError(e));
    }
  }
}
