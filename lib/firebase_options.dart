// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      // case TargetPlatform.iOS:
      //   return ios;
      // case TargetPlatform.macOS:
      //   return macos;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
      apiKey: "AIzaSyA79CTRfspU1k6qq6IpNCA8emIaRF3dZqE",

      authDomain: "first-flutter-b5dad.firebaseapp.com",

      projectId: "first-flutter-b5dad",

      storageBucket: "first-flutter-b5dad.appspot.com",

      messagingSenderId: "601345680928",

      appId: "1:601345680928:web:2b07db0f8e87767ca47e45"

  );

  static const FirebaseOptions android = FirebaseOptions(
      apiKey: "AIzaSyA79CTRfspU1k6qq6IpNCA8emIaRF3dZqE",

      authDomain: "first-flutter-b5dad.firebaseapp.com",

      projectId: "first-flutter-b5dad",

      storageBucket: "first-flutter-b5dad.appspot.com",

      messagingSenderId: "601345680928",

      appId: "1:601345680928:web:2b07db0f8e87767ca47e45"

  );

  // static const FirebaseOptions ios = FirebaseOptions(
  //   apiKey: 'xxxxxxxxxxxxxxxxxxx',
  //   appId: 'xxxxxxxxxxxxxxxxxxx',
  //   messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
  //   projectId: 'xxxxxxxxxxxxxxxxxxx',
  //   databaseURL: 'xxxxxxxxxxxxxxxxxxx',
  //   storageBucket: 'xxxxxxxxxxxxxxxxxxx',
  //   androidClientId: 'xxxxxxxxxxxxxxxxxxx',
  //   iosClientId: 'xxxxxxxxxxxxxxxxxxx',
  //   iosBundleId: 'xxxxxxxxxxxxxxxxxxx',
  // );

  // static const FirebaseOptions macos = FirebaseOptions(
  //   apiKey: 'xxxxxxxxxxxxxxxxxxx',
  //   appId: 'xxxxxxxxxxxxxxxxxxx',
  //   messagingSenderId: 'xxxxxxxxxxxxxxxxxxx',
  //   projectId: 'xxxxxxxxxxxxxxxxxxx',
  //   databaseURL: 'xxxxxxxxxxxxxxxxxxx',
  //   storageBucket: 'xxxxxxxxxxxxxxxxxxx',
  //   androidClientId: 'xxxxxxxxxxxxxxxxxxx',
  //   iosClientId: 'xxxxxxxxxxxxxxxxxxx',
  //   iosBundleId: 'xxxxxxxxxxxxxxxxxxx',
  // );
}