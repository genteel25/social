class UserResponse {
  final String id;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String image;
  final List<dynamic> messages;
  UserResponse({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.image,
    required this.messages,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json["_id"],
      name: json['name'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      image: json['image'],
      messages: json['messages'],
    );
  }
}
