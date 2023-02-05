import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:social/util/util.dart';

class Repository {
  final ApiService _apiService = ApiService();

  Future<ApiResponse> signIn(String email, String password) async {
    return _apiService.signIn(email, password);
  }

  Future<ApiResponse> signUp(
      String username, String email, String password) async {
    return _apiService.signUp(username, email, password);
  }

  Future<Either> getAllJobs() {
    return _apiService.getJobs();
  }

  Future<Either> updateProfile(
    String? username,
    String? email,
    String? password,
    File? file,
  ) async {
    return await _apiService.updateProfile(username, email, password, file);
  }
}
