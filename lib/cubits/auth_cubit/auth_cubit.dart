// ignore_for_file: unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  Future<void> userSigninWithEmailAndPassword(
      {required email, required password}) async {
    emit(LoginLoadingState());
    try {
      UserCredential user = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      emit(LoginSucessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          LoginFailureState(errorMessage: 'User Not Found'),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          LoginFailureState(errorMessage: 'Wrong Password'),
        );
      } else {
        emit(
          LoginFailureState(errorMessage: 'There Was An Error'),
        );
      }
    }
  }

  Future<void> userSignupWithEmailAndPassword(
      {required email, required password}) async {
    emit(SignupLoadingState());
    try {
      UserCredential user = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      emit(
        SignupSucessState(
            sucessMessage: 'The account has been created successfully.'),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(
          SignupFailureState(
              errorMessage: "The password provided is too weak."),
        );
      } else if (e.code == 'email-already-in-use') {
        emit(
          SignupFailureState(
              errorMessage: "The account already exists for that email."),
        );
      } else {
        emit(
          SignupFailureState(errorMessage: "Oops there was an error."),
        );
      }
    }
  }

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    if (kDebugMode) {
      print(change);
    }
  }
  // This method is overridden from the Cubit class and is called whenever
  //the state of the AuthCubit changes. It prints the state changes if the
  //application is running in debug mode.
  // It shows the current and the next state ...
}
