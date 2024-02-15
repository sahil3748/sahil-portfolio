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
    apiKey: 'AIzaSyCh7PWqrUJZLO5L3wzjWCP_Vs-T1cPgIGw',
    appId: '1:782634841100:web:ccf15a351952c04ec9ea29',
    messagingSenderId: '782634841100',
    projectId: 'sahil48-portfolio',
    authDomain: 'sahil48-portfolio.firebaseapp.com',
    storageBucket: 'sahil48-portfolio.appspot.com',
    measurementId: 'G-VDVZWRDWGY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAsJoHv3wVEpDkwOtLdJ-cDiCZr9KgzLQg',
    appId: '1:782634841100:android:5af0ce720d12e4dec9ea29',
    messagingSenderId: '782634841100',
    projectId: 'sahil48-portfolio',
    storageBucket: 'sahil48-portfolio.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCsDg5T63YZvsynbn86-O7c3TwHoauLwHo',
    appId: '1:782634841100:ios:39380d6d403e2afdc9ea29',
    messagingSenderId: '782634841100',
    projectId: 'sahil48-portfolio',
    storageBucket: 'sahil48-portfolio.appspot.com',
    iosBundleId: 'com.example.flutterApplication2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCsDg5T63YZvsynbn86-O7c3TwHoauLwHo',
    appId: '1:782634841100:ios:cd15f85024762128c9ea29',
    messagingSenderId: '782634841100',
    projectId: 'sahil48-portfolio',
    storageBucket: 'sahil48-portfolio.appspot.com',
    iosBundleId: 'com.example.flutterApplication2.RunnerTests',
  );
}
