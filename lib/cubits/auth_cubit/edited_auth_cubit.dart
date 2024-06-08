// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// part 'auth_state.dart';

// class AuthCubit extends Cubit<AuthState> {
//   String? userEmail;
//   String? userName;
//   bool isAnonymous = false;

//   AuthCubit() : super(AuthInitial());

//   Future<void> checkCurrentUser() async {
//     emit(CheckCurrentUserLoadingState());
//     if (isAnonymous) {
//       emit(CheckCurrentUserUnauthenticatedState());
//       return;
//     }
//     User? user = FirebaseAuth.instance.currentUser;
//     if (user != null) {
//       _setUserDetails(user);
//       emit(CheckCurrentUserAuthenticatedState());
//     } else {
//       emit(CheckCurrentUserUnauthenticatedState());
//       emit(CheckCurrentUserFailureState(errorMessage: FirebaseFailure.checkCurrentUserError().errMessage));
//     }
//   }

//   Future<void> signInAnonymously() async {
//     emit(SignInAnonymouslyLoadingState());
//     try {
//       final userCredential = await FirebaseAuth.instance.signInAnonymously();
//       _setUserDetails(userCredential.user);
//       isAnonymous = true;
//       emit(SignInAnonymouslySucessState(sucessMessage: "Signed in with temporary account."));
//     } on FirebaseAuthException catch (e) {
//       final failure = FirebaseFailure.fromFirebaseException(e);
//       emit(SignInAnonymouslyFailureState(errorMessage: failure.errMessage));
//     }
//   }

//   Future<void> userSigninWithEmailAndPassword({
//     required String email,
//     required String password,
//   }) async {
//     emit(LoginLoadingState());
//     try {
//       UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       _setUserDetails(user.user);
//       isAnonymous = false;
//       emit(LoginSucessState());
//     } on FirebaseAuthException catch (e) {
//       final failure = FirebaseFailure.fromFirebaseException(e);
//       emit(LoginFailureState(errorMessage: failure.errMessage));
//     }
//   }

//   Future<void> userSignupWithEmailAndPassword({
//     required String email,
//     required String password,
//     required String userName,
//   }) async {
//     emit(SignupLoadingState());
//     try {
//       UserCredential user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       await user.user?.updateDisplayName(userName);
//       isAnonymous = false;
//       emit(SignupSucessState(sucessMessage: 'The account has been created successfully.'));
//     } on FirebaseAuthException catch (e) {
//       final failure = FirebaseFailure.fromFirebaseException(e);
//       emit(SignupFailureState(errorMessage: failure.errMessage));
//     }
//   }

//   Future<void> signInWithGoogle() async {
//     emit(GoogleSignLoadingState());
//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//       final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );
//       UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
//       userEmail = googleUser?.email;
//       userName = googleUser?.displayName;
//       isAnonymous = false;
//       emit(GoogleSignSucessState());
//     } on FirebaseAuthException catch (e) {
//       emit(GoogleSignFailureState(errorMessage: FirebaseFailure.signInWithGoogleError().errMessage));
//     } catch (e) {
//       emit(GoogleSignFailureState(errorMessage: 'Oops there was an error.'));
//     }
//   }

//   Future<void> signOut() async {
//     emit(SignoutLoadingState());
//     try {
//       await FirebaseAuth.instance.signOut();
//       userEmail = null;
//       userName = null;
//       isAnonymous = false;
//       emit(SignoutSucessState(sucessMessage: 'Signed out successfully.'));
//     } catch (e) {
//       emit(SignoutFailureState(errorMessage: FirebaseFailure.signOutError().errMessage));
//     }
//   }

//   void _setUserDetails(User? user) {
//     userEmail = user?.email;
//     userName = user?.displayName;
//   }

//   @override
//   void onChange(Change<AuthState> change) {
//     super.onChange(change);
//     if (kDebugMode) {
//       print(change);
//     }
//   }
// }
