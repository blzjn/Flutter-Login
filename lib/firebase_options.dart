// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart';
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
    apiKey: 'AIzaSyCfsF5siOQ3D0-KrthaQwGJnMZLxZrXE_c',
    appId: '1:531859444089:web:9e9aabd62cce131f701fa8',
    messagingSenderId: '531859444089',
    projectId: 'fir-project-5737d',
    authDomain: 'fir-project-5737d.firebaseapp.com',
    storageBucket: 'fir-project-5737d.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZ6ADwckEIEdAmtVJUKc6QyA0I4IeVxKE',
    appId: '1:531859444089:android:c66f8f88d0d343b4701fa8',
    messagingSenderId: '531859444089',
    projectId: 'fir-project-5737d',
    storageBucket: 'fir-project-5737d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAjxHbuaWD4ac4QwyQfzXItsNYGnzMJVVw',
    appId: '1:531859444089:ios:41a61420ed1c5143701fa8',
    messagingSenderId: '531859444089',
    projectId: 'fir-project-5737d',
    storageBucket: 'fir-project-5737d.appspot.com',
    iosBundleId: 'com.example.loginFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAjxHbuaWD4ac4QwyQfzXItsNYGnzMJVVw',
    appId: '1:531859444089:ios:41a61420ed1c5143701fa8',
    messagingSenderId: '531859444089',
    projectId: 'fir-project-5737d',
    storageBucket: 'fir-project-5737d.appspot.com',
    iosBundleId: 'com.example.loginFlutter',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCfsF5siOQ3D0-KrthaQwGJnMZLxZrXE_c',
    appId: '1:531859444089:web:49d45cbffba9dfc8701fa8',
    messagingSenderId: '531859444089',
    projectId: 'fir-project-5737d',
    authDomain: 'fir-project-5737d.firebaseapp.com',
    storageBucket: 'fir-project-5737d.appspot.com',
  );
}

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
