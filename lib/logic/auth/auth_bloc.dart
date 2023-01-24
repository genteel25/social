// import 'package:travel_app/model/auth_model.dart';
// import 'package:travel_app/util/util.dart';

// class AuthBloc extends Bloc<AuthEvent, AuthState> {
//   AuthBloc() : super(AuthInitial()) {
//     on<SignIn>((event, emit) => signIn(event, emit));
//     on<SignUp>((event, emit) => signUp(event, emit));
//     on<VerifyUser>((event, emit) => verifyUser(event, emit));
//     on<ResendOtp>((event, emit) => resendOtpss(event, emit));
//     on<ForgotPassword>((event, emit) => forgotPassword(event, emit));
//   }

//   signIn(event, emit) async {
//     try {
//       emit(AuthLoading());
//       final AuthResponse auth =
//           await repository.signIn(event.email, event.password);
//       if (auth.status == true) {
//         await SessionManager().setSession();
//         await SessionManager().setToken(auth.token!);
//         emit(AuthSuccess(response: auth));
//       } else {
//         emit(AuthFailure(error: auth.message.toString()));
//       }
//     } catch (e) {
//       emit(AuthFailure(error: e.toString()));
//     }
//   }

//   signUp(event, emit) async {
//     try {
//       emit(AuthLoading());
//       final AuthResponse auth = await repository.signUp(
//           event.email, event.password, event.phone, event.name);
//       if (auth.status == true) {
//         emit(AuthSuccess(response: auth));
//       } else {
//         emit(AuthFailure(error: auth.message.toString()));
//       }
//     } catch (e) {
//       emit(AuthFailure(error: e.toString()));
//     }
//   }
// }

// verifyUser(event, emit) async {
//   try {
//     emit(AuthLoading());
//     final AuthResponse auth = await repository.verifyUser(event.code);
//     if (auth.status == true) {
//       emit(AuthSuccess(response: auth));
//     } else {
//       emit(AuthFailure(error: auth.message.toString()));
//     }
//   } catch (e) {
//     emit(AuthFailure(error: e.toString()));
//   }
// }

// resendOtpss(event, emit) async {
//   try {
//     emit(AuthLoading());
//     final AuthResponse auth = await repository.resendOtp();
//     if (auth.status == true) {
//       emit(AuthSuccess(response: auth));
//     } else {
//       emit(AuthFailure(error: auth.message.toString()));
//     }
//   } catch (e) {
//     emit(AuthFailure(error: e.toString()));
//   }
// }

// forgotPassword(event, emit) async {
//   try {
//     emit(AuthLoading());
//     final AuthResponse auth = await repository.forgotPassword(
//       event.email,
//       event.password,
//       event.confirmedPassword,
//     );
//     if (auth.status == true) {
//       emit(AuthSuccess(response: auth));
//     } else {
//       emit(AuthFailure(error: auth.message.toString()));
//     }
//   } catch (e) {
//     emit(AuthFailure(error: e.toString()));
//   }
// }
