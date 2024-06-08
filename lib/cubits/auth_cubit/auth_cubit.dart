import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  String? userEmail;
// userEmail: String variable to store the user's email.
  String? userName;
// userName: String variable to store the user's name.
  bool isAnonymous = false;
  AuthCubit()
      : super(
          AuthInitial(),
        );
  // The AuthCubit class extends Cubit<AuthState> and contains methods for
  //signing in anonymously, signing in with email and password, signing up
  //with email and password, signing in with Google, and signing out.

  Future<void> checkCurrentUser() async {
    emit(
      CheckCurrentUserLoadingState(),
    );
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      if (user.isAnonymous) {
        await FirebaseAuth.instance.signOut();
        emit(
          CheckCurrentUserUnauthenticatedState(),
        );
      } else {
        _setUserDetails(user);
        emit(
          CheckCurrentUserAuthenticatedState(),
        );
      }
    } else {
      emit(
        CheckCurrentUserUnauthenticatedState(),
      );
    }
    // if (user!.isAnonymous) {
    //   await FirebaseAuth.instance.signOut();
    //   emit(
    //     CheckCurrentUserUnauthenticatedState(),
    //   );
    //   return;
    // }
    // User? user = FirebaseAuth.instance.currentUser;
    // if (user != null) {
    //   _setUserDetails(user);
    //   emit(
    //     CheckCurrentUserAuthenticatedState(),
    //   );
    // } else {
    //   emit(
    //     CheckCurrentUserUnauthenticatedState(),
    //   );
    // }
  }

  Future<void> signInAnonymously() async {
    emit(
      SignInAnonymouslyLoadingState(),
    );
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      _setUserDetails(userCredential.user);
      isAnonymous = true;
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
        emit(
          SignInAnonymouslyFailureState(
            errorMessage:
                "This operation is restricted to administrators only.",
          ),
        );
      }
    }
    // signInAnonymously(): Initiates anonymous sign-in
    // process using Firebase Auth if successful, it updates the user's
    //email and name using the _setUserDetails method and emits a
    //SignInAnonymouslySucessState with a success message. If an error occurs
    //during the sign-in process, it emits a SignInAnonymouslyFailureState with
    //an appropriate error message.
  }

  Future<void> userSigninWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(
      LoginLoadingState(),
    );
    try {
      UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _setUserDetails(user.user);
      isAnonymous = false;
      emit(
        LoginSucessState(),
      );
    } on FirebaseAuthException catch (e) {
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
    // userSigninWithEmailAndPassword(): Handles user sign-in with email
    //and password it emits a LoginLoadingState while the sign-in process is
    // ongoing. If successful, it updates the user's email and name using
    // the _setUserDetails method and emits a LoginSucessState.
    // If an error occurs during the sign-in process, it emits a
    // LoginFailureState with an appropriate error message.
  }

  Future<void> userSignupWithEmailAndPassword({
    required String email,
    required String password,
    required String userName,
  }) async {
    emit(
      SignupLoadingState(),
    );
    try {
      UserCredential user =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await user.user?.updateDisplayName(userName);
      isAnonymous = false;
      // "user.user" is accessing the User object associated with the
      //UserCredential returned by createUserWithEmailAndPassword. "?" is a
      // null-aware operator that checks if "user.user" is null before accessing
      //its properties or calling its methods. updateDisplayName(userName) is a
      // method that updates the display name of the user. await is used to wait
      // for the asynchronous operation to complete before moving on to the
      //next line of code. So, this code is updating the display
      // name of the user with the provided userName.
      // _setUserDetails(user.user);
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
    // userSignupWithEmailAndPassword(): Manages user registration
    // with email, password, and username it emits a SignupLoadingState while
    // the registration process is ongoing. If successful, it updates the user's
    // email and name using the _setUserDetails method and emits a
    //SignupSucessState with a success message. If an error occurs during the
    //registration process, it emits a SignupFailureState with an appropriate
    // error message.
  }

  Future<void> signInWithGoogle() async {
    emit(
      GoogleSignLoadingState(),
    );
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      // It uses the GoogleSignIn() class to initiate the sign-in process and
      //obtains a GoogleSignInAccount object representing the signed-in user.
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      // It then uses the authentication property of the GoogleSignInAccount
      // object to obtain a GoogleSignInAuthentication object representing
      //the authenticated user.
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      // It creates an AuthCredential object using the accessToken and idToken
      // properties of the GoogleSignInAuthentication object.

      // ignore: unused_local_variable
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      // Ensure the email is retrieved from the Google account
      userEmail = googleUser?.email;
      userName = googleUser?.displayName;
      isAnonymous = false;
      // It attempts to sign in the user using the signInWithCredential()
      // method of FirebaseAuth.instance and the AuthCredential object
      // obtained earlier.
      emit(
        GoogleSignSucessState(),
      );
    } on FirebaseAuthException {
      emit(GoogleSignFailureState(errorMessage: "Oops there was an error."));
    } catch (e) {
      emit(GoogleSignFailureState(errorMessage: "Oops there was an error."));
    }
  }

  // signInWithGoogle(): Handles sign-in using Google authentication it emits
  // a GoogleSignLoadingState while the sign-in process is ongoing.
  // If successful, it updates the user's email and name using
  // the _setUserDetails method and emits a GoogleSignSucessState.
  // If an error occurs during the sign-in process, it emits a
  // GoogleSignFailureState with an appropriate error message.

  Future<void> signOut() async {
    emit(
      SignoutLoadingState(),
    );
    try {
      await FirebaseAuth.instance.signOut();
      userEmail = null;
      userName = null;
      isAnonymous = false;
      // If the user's sign-out operation is successful, the code updates the
      //userEmail and userName properties to null and emits a SignoutSucessState
      // with a success message
      emit(
        SignoutSucessState(sucessMessage: 'Signed out successfully.'),
      );
    } on Exception {
      emit(
        LoginFailureState(errorMessage: "Oops there was an error."),
      );
    }
    // signOut(): Logs the user out by signing out from Firebase Auth if
    //successful, it updates the user's email and name to null and emits a
    //SignoutSucessState with a success message. If an error occurs during
    // the sign-out process, it emits a LoginFailureState with an appropriate
    // error message.
  }

  void _setUserDetails(User? user) {
    userEmail = user?.email;
    userName = user?.displayName;
// The userEmail and userName properties are updated using the user object
//obtained from the FirebaseAuth.instance.currentUser method.
// The user object is accessed using the user property of the AuthState class,
// which is passed as a parameter to the _setUserDetails method.
// The userEmail and userName properties are updated using the email and
//displayName properties of the User object, respectively.
// If the user object is null, the userEmail and userName
//properties will not be updated.
  }

// The _setUserDetails method is used to update the userEmail and userName
// properties based on the user's details retrieved from Firebase Auth.

  @override
  void onChange(Change<AuthState> change) {
    super.onChange(change);
    if (kDebugMode) {
      print(change);
    }
  }
  // The onChange method is overridden to print the state changes when
  //running in debug mode (kDebugMode).
}
//  The provided code is implementation of user authentication management
//using Firebase Authentication. It demonstrates how to handle different
// authentication operations, such as signing in anonymously, signing in with
// email and password, signing up with email and password, signing in with
//Google, and signing out, and how to handle errors that may occur
//during these operations.
