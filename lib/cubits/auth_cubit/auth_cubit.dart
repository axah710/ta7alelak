
// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {

  AuthCubit()
      : super(
          AuthInitial(),
        );
  Future<void> signInAnonymously() async {
    emit(
      SignInAnonymouslyLoadingState(),
    );
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      emit(
        SignInAnonymouslySucessState(
            sucessMessage: "Signed in with temporary account."),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "admin-restricted-operation") {
        emit(
          SignInAnonymouslyFailureState(
            errorMessage: "Anonymous accounts are not enabled.",
          ),
        );
      } else {
        SignInAnonymouslyFailureState(
          errorMessage: "This operation is restricted to administrators only.",
        );
      }
    }
  }

  Future<void> userSigninWithEmailAndPassword(
      {required email, required password}) async {
    emit(LoginLoadingState());
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      emit(LoginSucessState());

    
      }

     on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(
          LoginFailureState(errorMessage: 'No user found for that email.'),
        );
      } else if (e.code == 'wrong-password') {
        emit(
          LoginFailureState(
              errorMessage: 'Wrong password provided for that user.'),
        );
      } else {
        emit(
          LoginFailureState(errorMessage: 'Oops There Was An Error'),
        );
      }
    }
  }

  Future<void> userSignupWithEmailAndPassword({
    required email,
    required password,
  }) async {
    emit(SignupLoadingState());
    try {
      UserCredential user =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
    

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

  Future<UserCredential> signInWithGoogle() async {
    emit(
      GoogleSignLoadingState(),
    );
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    emit(
      SignoutLoadingState(),
    );
    try {
      await FirebaseAuth.instance.signOut();
      emit(
        SignoutSucessState(sucessMessage: 'Signed out successfully.'),
      );
    } on Exception {
      emit(
        LoginFailureState(errorMessage: " Oops there was an error."),
      );
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
