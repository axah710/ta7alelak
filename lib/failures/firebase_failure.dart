// abstract class Failure {
//   final String errMessage;

//   const Failure(this.errMessage);
// }

// class FirebaseFailure extends Failure {
//   FirebaseFailure(super.errMessage);

//   factory FirebaseFailure.fromFirebaseException(FirebaseAuthException exception) {
//     switch (exception.code) {
//       case 'admin-restricted-operation':
//         return FirebaseFailure('Failed to sign in anonymously due to admin restrictions.');
//       case 'user-not-found':
//         return FirebaseFailure('No user found for that email.');
//       case 'wrong-password':
//         return FirebaseFailure('Incorrect password provided.');
//       case 'weak-password':
//         return FirebaseFailure('The password provided is too weak.');
//       case 'email-already-in-use':
//         return FirebaseFailure('The email address is already in use.');
//       case 'invalid-email':
//         return FirebaseFailure('The email address is not valid.');
//       case 'operation-not-allowed':
//         return FirebaseFailure('This operation is not allowed. Please contact support.');
//       case 'too-many-requests':
//         return FirebaseFailure('Too many requests. Try again later.');
//       case 'account-exists-with-different-credential':
//         return FirebaseFailure('An account already exists with a different credential.');
//       case 'invalid-credential':
//         return FirebaseFailure('The credential is invalid or expired.');
//       case 'user-disabled':
//         return FirebaseFailure('The user account has been disabled by an administrator.');
//       case 'credential-already-in-use':
//         return FirebaseFailure('This credential is already associated with a different user account.');
//       case 'invalid-verification-code':
//         return FirebaseFailure('The verification code is invalid.');
//       case 'invalid-verification-id':
//         return FirebaseFailure('The verification ID is invalid.');
//       case 'session-expired':
//         return FirebaseFailure('The session has expired. Please try again.');
//       case 'invalid-custom-token':
//         return FirebaseFailure('The custom token format is incorrect. Please check the documentation.');
//       case 'custom-token-mismatch':
//         return FirebaseFailure('The custom token corresponds to a different audience.');
//       case 'user-mismatch':
//         return FirebaseFailure('The supplied credentials do not correspond to the previously signed in user.');
//       case 'requires-recent-login':
//         return FirebaseFailure('This operation is sensitive and requires recent authentication. Log in again before retrying this request.');
//       case 'invalid-user-token':
//         return FirebaseFailure('The user\'s credential is no longer valid. The user must sign in again.');
//       case 'missing-email':
//         return FirebaseFailure('An email address must be provided.');
//       default:
//         return FirebaseFailure('Unexpected error occurred. Please try again later.');
//     }
//   }

//   factory FirebaseFailure.signInWithGoogleError() {
//     return FirebaseFailure('Failed to sign in with Google due to authentication error.');
//   }

//   factory FirebaseFailure.signOutError() {
//     return FirebaseFailure('Failed to sign out due to unexpected error.');
//   }

//   factory FirebaseFailure.checkCurrentUserError() {
//     return FirebaseFailure('Failed to check current user as no user is authenticated.');
//   }
// }
