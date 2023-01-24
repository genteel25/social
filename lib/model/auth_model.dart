class AuthResponse {
  dynamic message;
  String? token;
  bool? status;
  String? id;
  String? email;
  Map<String, dynamic>? user;

  AuthResponse({
    this.status,
    this.message,
    this.token,
    this.id,
    this.email,
    this.user,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      message: json['message'] as dynamic,
      token: json['token'],
      status: json['status'],
      id: json['userId'],
      email: json['email'],
      user: json['user'],
    );
  }
}
