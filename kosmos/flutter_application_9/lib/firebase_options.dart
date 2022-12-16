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
    apiKey: 'AIzaSyAQaJTSxZZQrbKAvjMFdrgHtGWYzcBX2uE',
    appId: '1:425313425649:web:911b3d948589165bf87150',
    messagingSenderId: '425313425649',
    projectId: 'ooo-aa-s-a-s',
    authDomain: 'ooo-aa-s-a-s.firebaseapp.com',
    storageBucket: 'ooo-aa-s-a-s.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCTWkyjhz5kXiMDDRsHHuXa08zI4AttTKs',
    appId: '1:425313425649:android:02047d0a9dfb4fbdf87150',
    messagingSenderId: '425313425649',
    projectId: 'ooo-aa-s-a-s',
    storageBucket: 'ooo-aa-s-a-s.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD1zTug2R88xy81b7jzcQ3IiM7dx9VGDzo',
    appId: '1:425313425649:ios:9b3b16f6a9d4e7ccf87150',
    messagingSenderId: '425313425649',
    projectId: 'ooo-aa-s-a-s',
    storageBucket: 'ooo-aa-s-a-s.appspot.com',
    iosClientId: '425313425649-4gb3uaqk8b4bvsu8ud9pkf0h82qn56dr.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication9',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD1zTug2R88xy81b7jzcQ3IiM7dx9VGDzo',
    appId: '1:425313425649:ios:9b3b16f6a9d4e7ccf87150',
    messagingSenderId: '425313425649',
    projectId: 'ooo-aa-s-a-s',
    storageBucket: 'ooo-aa-s-a-s.appspot.com',
    iosClientId: '425313425649-4gb3uaqk8b4bvsu8ud9pkf0h82qn56dr.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication9',
  );
}