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
    apiKey: 'AIzaSyBIFGqOxivctyC2cJN2FwaO9tOBc5r60eo',
    appId: '1:837617362111:web:a9e7cecf11825f2627520a',
    messagingSenderId: '837617362111',
    projectId: 'beep-5ab63',
    authDomain: 'beep-5ab63.firebaseapp.com',
    storageBucket: 'beep-5ab63.appspot.com',
    measurementId: 'G-DYTQ80WJBN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAs1cGSplyIeZ3BCPvvAi-gD2fS_JLCV0M',
    appId: '1:837617362111:android:ccdc289f58dadd9127520a',
    messagingSenderId: '837617362111',
    projectId: 'beep-5ab63',
    storageBucket: 'beep-5ab63.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAF7QTw6JgcXRLOZaWvoBab9agHVCsus8w',
    appId: '1:837617362111:ios:ff9970003419c61827520a',
    messagingSenderId: '837617362111',
    projectId: 'beep-5ab63',
    storageBucket: 'beep-5ab63.appspot.com',
    androidClientId: '837617362111-mhvgn2lk0fige949ei7losi4i2vq9k8t.apps.googleusercontent.com',
    iosClientId: '837617362111-jif50f77vobhcfo6dqgqj7lj7liq0919.apps.googleusercontent.com',
    iosBundleId: 'vergel.com.beepAplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAF7QTw6JgcXRLOZaWvoBab9agHVCsus8w',
    appId: '1:837617362111:ios:911f3de01f3acefa27520a',
    messagingSenderId: '837617362111',
    projectId: 'beep-5ab63',
    storageBucket: 'beep-5ab63.appspot.com',
    androidClientId: '837617362111-mhvgn2lk0fige949ei7losi4i2vq9k8t.apps.googleusercontent.com',
    iosClientId: '837617362111-sa7n0moodvnli2vaj2u90eh6rihmdt4v.apps.googleusercontent.com',
    iosBundleId: 'vergel.com.beepAplication.RunnerTests',
  );
}
