import 'package:social/model/user_model.dart';

class ApiResponse {
  String? message;
  String? error;
  bool? status;
  String? token;
  String? userId;
  UserModel? userInfo;

  ApiResponse({
    this.error,
    this.message,
    this.status,
    this.token,
    this.userId,
    this.userInfo,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      error: json['error'],
      message: json['message'],
      status: json['status'],
      token: json['token'],
      userId: json['id'],
      userInfo: UserModel.fromJson(json['info'] as Map<String, dynamic>),
    );
  }
}
