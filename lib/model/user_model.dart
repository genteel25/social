class UserModel {
  final String username;
  final String email;
  String? ownerImage;
  final String id;

  UserModel({
    required this.email,
    required this.id,
    this.ownerImage,
    required this.username,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      id: json['_id'],
      ownerImage: json['image'],
      username: json['username'],
    );
  }
}
