// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBSXUtYrrLIO5OTQN_XorgBEUcoW5pZLpk',
    appId: '1:1083766154537:web:7efb84fd74abdd2d060338',
    messagingSenderId: '1083766154537',
    projectId: 'appfirebase-291b7',
    authDomain: 'appfirebase-291b7.firebaseapp.com',
    storageBucket: 'appfirebase-291b7.appspot.com',
    measurementId: 'G-W6RB4XF2TZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBkwy2kYhp9yLg7sh59q9EjXjgqlYNbY7E',
    appId: '1:1083766154537:android:dc7ed9430c98700d060338',
    messagingSenderId: '1083766154537',
    projectId: 'appfirebase-291b7',
    storageBucket: 'appfirebase-291b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcJGI4pldHltwij7p5mVyvBNCF3IitjF4',
    appId: '1:1083766154537:ios:de55d6d56c09bc03060338',
    messagingSenderId: '1083766154537',
    projectId: 'appfirebase-291b7',
    storageBucket: 'appfirebase-291b7.appspot.com',
    iosBundleId: 'com.example.appprueba',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcJGI4pldHltwij7p5mVyvBNCF3IitjF4',
    appId: '1:1083766154537:ios:de55d6d56c09bc03060338',
    messagingSenderId: '1083766154537',
    projectId: 'appfirebase-291b7',
    storageBucket: 'appfirebase-291b7.appspot.com',
    iosBundleId: 'com.example.appprueba',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBSXUtYrrLIO5OTQN_XorgBEUcoW5pZLpk',
    appId: '1:1083766154537:web:16f64015c4733e79060338',
    messagingSenderId: '1083766154537',
    projectId: 'appfirebase-291b7',
    authDomain: 'appfirebase-291b7.firebaseapp.com',
    storageBucket: 'appfirebase-291b7.appspot.com',
    measurementId: 'G-NTVDXT25J0',
  );
}
