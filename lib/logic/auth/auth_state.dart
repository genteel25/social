import 'package:social/model/api_response.dart';
import 'package:social/util/package_export.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthLoading extends AuthState {
  @override
  List<Object> get props => [];
}

class AuthSuccess extends AuthState {
  final ApiResponse response;
  const AuthSuccess({required this.response});
  @override
  List<Object> get props => [response];
}

class AuthFailure extends AuthState {
  final String error;
  const AuthFailure({required this.error});
  @override
  List<Object> get props => [error];
}
