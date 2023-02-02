import 'package:social/model/user_model.dart';

class JobResponse {
  String? title;
  String? description;
  String? companyName;
  String? jobType;
  double? rating;
  String? companyImage;
  String? location;
  int? amount;
  bool? popular;
  String? id;
  UserModel? userInfo;
  String? message;

  JobResponse({
    this.title,
    this.description,
    this.rating,
    this.companyImage,
    this.jobType,
    this.amount,
    this.location,
    this.userInfo,
    this.id,
    this.popular,
    this.companyName,
    this.message,
  });

  factory JobResponse.fromJson(Map<String, dynamic> json) {
    return JobResponse(
      title: json['title'],
      description: json['description'],
      rating: json['rating'],
      companyImage: json['companyImage'],
      companyName: json['company'],
      amount: json['salary'],
      jobType: json['type'],
      location: json['location'],
      userInfo: UserModel.fromJson(json['creatorId'] as Map<String, dynamic>),
      id: json['_id'],
      popular: json['isPopular'],
    );
  }
}
