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
    apiKey: 'AIzaSyBEr2MLRTrfnt_Hc2YxOd4f-xBUl4X8cc4',
    appId: '1:361543220427:web:86adbe6b1631dfebf0af4e',
    messagingSenderId: '361543220427',
    projectId: 'authenticationapp-4dd0e',
    authDomain: 'authenticationapp-4dd0e.firebaseapp.com',
    storageBucket: 'authenticationapp-4dd0e.appspot.com',
    measurementId: 'G-SJKVPXZWBD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGuv-IJYhF2QvcEocZxZ0ZPsZOLOUfYVA',
    appId: '1:361543220427:android:66c94f3a4eb2e533f0af4e',
    messagingSenderId: '361543220427',
    projectId: 'authenticationapp-4dd0e',
    storageBucket: 'authenticationapp-4dd0e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDr-hVRbOe6bNc07ZM2H7ktvJn2w6xakms',
    appId: '1:361543220427:ios:a0b55eb954197b80f0af4e',
    messagingSenderId: '361543220427',
    projectId: 'authenticationapp-4dd0e',
    storageBucket: 'authenticationapp-4dd0e.appspot.com',
    iosBundleId: 'com.example.fbapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDr-hVRbOe6bNc07ZM2H7ktvJn2w6xakms',
    appId: '1:361543220427:ios:215dfe9b8711c198f0af4e',
    messagingSenderId: '361543220427',
    projectId: 'authenticationapp-4dd0e',
    storageBucket: 'authenticationapp-4dd0e.appspot.com',
    iosBundleId: 'com.example.fbapp.RunnerTests',
  );
}
