// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAUjdN94ywNVooYUtG-37nCgvLWcM1MR2k',
    appId: '1:538649822827:web:351d284ccb8a52481fd32e',
    messagingSenderId: '538649822827',
    projectId: 'ta7alelak',
    authDomain: 'ta7alelak.firebaseapp.com',
    storageBucket: 'ta7alelak.appspot.com',
    measurementId: 'G-2MSTMK0Y7H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyACmpsgDcGsejbuQ6AVhziYfnUEIexYsus',
    appId: '1:538649822827:android:599dee74f9985c2f1fd32e',
    messagingSenderId: '538649822827',
    projectId: 'ta7alelak',
    storageBucket: 'ta7alelak.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWB6CedStIZwK2p2RzIbAWG4ivDN-mppU',
    appId: '1:538649822827:ios:2a48c8ac2988d80f1fd32e',
    messagingSenderId: '538649822827',
    projectId: 'ta7alelak',
    storageBucket: 'ta7alelak.appspot.com',
    iosBundleId: 'com.example.ta7alelak',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWB6CedStIZwK2p2RzIbAWG4ivDN-mppU',
    appId: '1:538649822827:ios:af415dd4d63e22581fd32e',
    messagingSenderId: '538649822827',
    projectId: 'ta7alelak',
    storageBucket: 'ta7alelak.appspot.com',
    iosBundleId: 'com.example.ta7alelak.RunnerTests',
  );
}