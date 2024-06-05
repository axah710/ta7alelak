part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignInAnonymouslyInitial extends AuthState {}
// This is the initial state ...

final class SignInAnonymouslySucessState extends AuthState {
  final String sucessMessage;

  SignInAnonymouslySucessState({
    required this.sucessMessage,
  });
}

final class SignInAnonymouslyLoadingState extends AuthState {}

final class SignInAnonymouslyFailureState extends AuthState {
  final String errorMessage;

  SignInAnonymouslyFailureState({required this.errorMessage});
}

final class LoginInitialState extends AuthState {}
// This is the initial state ...

final class LoginSucessState extends AuthState {}

final class LoginLoadingState extends AuthState {}

final class LoginFailureState extends AuthState {
  final String errorMessage;

  LoginFailureState({required this.errorMessage});
}

final class SignupInitial extends AuthState {}
// This is the initial state ...

final class SignupSucessState extends AuthState {
  final String sucessMessage;

  SignupSucessState({required this.sucessMessage});
}

final class SignupLoadingState extends AuthState {}

final class SignupFailureState extends AuthState {
  final String errorMessage;

  SignupFailureState({required this.errorMessage});
}

final class GoogleSignInitial extends AuthState {}
// This is the initial state ...

final class GoogleSignSucessState extends AuthState {}

final class GoogleSignLoadingState extends AuthState {}

final class GoogleSignFailureState extends AuthState {
  final String errorMessage;

  GoogleSignFailureState({required this.errorMessage});
}
