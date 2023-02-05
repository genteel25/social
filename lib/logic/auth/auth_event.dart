import 'dart:io';

abstract class AuthEvent {}

class SignUp extends AuthEvent {
  final String username;
  final String email;
  final String password;

  SignUp({
    required this.username,
    required this.email,
    required this.password,
  });
}

class SignIn extends AuthEvent {
  final String email;
  final String password;

  SignIn({
    required this.email,
    required this.password,
  });
}

class UpdateProfile extends AuthEvent {
  final String username;
  final String email;
  final String password;
  final File file;

  UpdateProfile({
    required this.username,
    required this.email,
    required this.password,
    required this.file,
  });
}

class ForgotPassword extends AuthEvent {
  final String email;
  final String password;
  final String confirmedPassword;

  ForgotPassword({
    required this.email,
    required this.password,
    required this.confirmedPassword,
  });
}

class ResendOtp extends AuthEvent {
  ResendOtp();
}
