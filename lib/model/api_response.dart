class ApiResponse {
  String? message;
  String? error;
  bool? status;
  String? token;

  ApiResponse({this.error, this.message, this.status, this.token});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
        error: json['error'],
        message: json['message'],
        status: json['status'],
        token: json['token']);
  }
}
