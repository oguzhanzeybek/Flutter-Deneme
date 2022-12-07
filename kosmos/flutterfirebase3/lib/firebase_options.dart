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
    apiKey: 'AIzaSyDrtxuAVrFuWE2MxbL4PKrz001ZmbiVL4c',
    appId: '1:645216141904:web:450bacfe2a37498d20c755',
    messagingSenderId: '645216141904',
    projectId: 'deneme-6bcf1',
    authDomain: 'deneme-6bcf1.firebaseapp.com',
    storageBucket: 'deneme-6bcf1.appspot.com',
    measurementId: 'G-SVPVC344Z0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQaDdOPSplw6ttvtiIzt06LFMvHzr9850',
    appId: '1:645216141904:android:6a101f440b1ee4db20c755',
    messagingSenderId: '645216141904',
    projectId: 'deneme-6bcf1',
    storageBucket: 'deneme-6bcf1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBszO9cIKtS-lfENcBG42Pw57bb4FJM1-U',
    appId: '1:645216141904:ios:d24ecddc1e7d668720c755',
    messagingSenderId: '645216141904',
    projectId: 'deneme-6bcf1',
    storageBucket: 'deneme-6bcf1.appspot.com',
    iosClientId: '645216141904-mtfgbfncauccc74dl7un07858coo15th.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfirebase3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBszO9cIKtS-lfENcBG42Pw57bb4FJM1-U',
    appId: '1:645216141904:ios:d24ecddc1e7d668720c755',
    messagingSenderId: '645216141904',
    projectId: 'deneme-6bcf1',
    storageBucket: 'deneme-6bcf1.appspot.com',
    iosClientId: '645216141904-mtfgbfncauccc74dl7un07858coo15th.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterfirebase3',
  );
}
