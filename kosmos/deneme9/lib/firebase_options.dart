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
    apiKey: 'AIzaSyBMUrWWaucBkpDfoK-zOwc5YYODGCjqcrI',
    appId: '1:302148662646:web:543fd780ffbe3fd5f07657',
    messagingSenderId: '302148662646',
    projectId: 'wireworks-9ef30',
    authDomain: 'wireworks-9ef30.firebaseapp.com',
    storageBucket: 'wireworks-9ef30.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCE-RxSwYutQdIfPTUw6K6gy3Tz96OcVhI',
    appId: '1:302148662646:android:1e830eec343cda88f07657',
    messagingSenderId: '302148662646',
    projectId: 'wireworks-9ef30',
    storageBucket: 'wireworks-9ef30.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBDlKwASC80lSoAVZ0KX8m6w1ggiezJUeg',
    appId: '1:302148662646:ios:47a289056a187e08f07657',
    messagingSenderId: '302148662646',
    projectId: 'wireworks-9ef30',
    storageBucket: 'wireworks-9ef30.appspot.com',
    iosClientId: '302148662646-asd4t10rv3jpf8v3kt1tf5ur88tqr9in.apps.googleusercontent.com',
    iosBundleId: 'com.example.deneme9',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBDlKwASC80lSoAVZ0KX8m6w1ggiezJUeg',
    appId: '1:302148662646:ios:47a289056a187e08f07657',
    messagingSenderId: '302148662646',
    projectId: 'wireworks-9ef30',
    storageBucket: 'wireworks-9ef30.appspot.com',
    iosClientId: '302148662646-asd4t10rv3jpf8v3kt1tf5ur88tqr9in.apps.googleusercontent.com',
    iosBundleId: 'com.example.deneme9',
  );
}
