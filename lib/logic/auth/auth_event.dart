abstract class AuthEvent {}

class SignUp extends AuthEvent {
  final String name;
  final String email;
  final String password;
  final String phone;

  SignUp({
    required this.email,
    required this.password,
    required this.phone,
    required this.name,
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

class VerifyUser extends AuthEvent {
  final String code;

  VerifyUser({
    required this.code,
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
