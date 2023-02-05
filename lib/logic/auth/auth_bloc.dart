import 'package:social/model/api_response.dart';
import 'package:social/util/util.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SignIn>((event, emit) => signIn(event, emit));
    on<SignUp>((event, emit) => signUp(event, emit));
    on<UpdateProfile>((event, emit) => updateProfile(event, emit));
    // on<ResendOtp>((event, emit) => resendOtpss(event, emit));
    // on<ForgotPassword>((event, emit) => forgotPassword(event, emit));
  }

  signIn(event, emit) async {
    try {
      emit(AuthLoading());
      final ApiResponse auth =
          await repository.signIn(event.email, event.password);

      if (auth.status == true) {
        await SessionManager().setUserId(auth.userId!);
        await SessionManager().setToken(auth.token!);
        await SessionManager().setToken(auth.token!);
        emit(AuthSuccess(response: auth));
      } else {
        emit(AuthFailure(error: auth.message.toString()));
      }
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }

  signUp(event, emit) async {
    try {
      emit(AuthLoading());
      final ApiResponse auth =
          await repository.signUp(event.username, event.email, event.password);
      if (auth.status == true) {
        await SessionManager().setUserId(auth.userId!);
        emit(AuthSuccess(response: auth));
      } else {
        emit(AuthFailure(error: auth.message.toString()));
      }
    } catch (e) {
      emit(AuthFailure(error: e.toString()));
    }
  }
}

updateProfile(event, emit) async {
  emit(AuthLoading());
  var data = await repository.updateProfile(
    event.username,
    event.email,
    event.password,
    event.file,
  );
  print(data);
  data.fold((l) => emit(AuthFailure(error: l.toString())),
      (r) => emit(AuthSuccess(response: r)));
}

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

