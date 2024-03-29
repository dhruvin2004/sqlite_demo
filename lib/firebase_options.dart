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
    apiKey: 'AIzaSyBMwpYusDyCf_o9vRNRKO_d5rlPwyw001s',
    appId: '1:653325135812:web:faa85651b1d2f705b9fe91',
    messagingSenderId: '653325135812',
    projectId: 'sqlite-b4a8f',
    authDomain: 'sqlite-b4a8f.firebaseapp.com',
    storageBucket: 'sqlite-b4a8f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7Hyb8iYL9OnyP1Z79L4JxHgotZOV98Vk',
    appId: '1:653325135812:android:50e3baeda6906f11b9fe91',
    messagingSenderId: '653325135812',
    projectId: 'sqlite-b4a8f',
    storageBucket: 'sqlite-b4a8f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDuaPgTGWrTBmOneYejaqwtFHPxi-RTZmk',
    appId: '1:653325135812:ios:a213cbc11dbf259cb9fe91',
    messagingSenderId: '653325135812',
    projectId: 'sqlite-b4a8f',
    storageBucket: 'sqlite-b4a8f.appspot.com',
    iosBundleId: 'com.example.sqliteDemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDuaPgTGWrTBmOneYejaqwtFHPxi-RTZmk',
    appId: '1:653325135812:ios:a223a2046126b2f0b9fe91',
    messagingSenderId: '653325135812',
    projectId: 'sqlite-b4a8f',
    storageBucket: 'sqlite-b4a8f.appspot.com',
    iosBundleId: 'com.example.sqliteDemo.RunnerTests',
  );
}
