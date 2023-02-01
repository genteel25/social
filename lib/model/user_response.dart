class UserResponse {
  final String id;
  final String username;
  final String email;
  final String password;
  final String image;
  final String creatorId;

  UserResponse({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.creatorId,
    required this.image,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json["_id"],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      creatorId: json['creatorId'],
      image: json['image'],
    );
  }
}
