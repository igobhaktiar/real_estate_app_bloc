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
    apiKey: 'AIzaSyDLE8zQ_ZzdJi0cu_QDXS8q_slup_eEDJg',
    appId: '1:261240129380:web:1a8952027e3fd093c65c71',
    messagingSenderId: '261240129380',
    projectId: 'asctest-1c4af',
    authDomain: 'asctest-1c4af.firebaseapp.com',
    storageBucket: 'asctest-1c4af.appspot.com',
    measurementId: 'G-NG52B4J4ZE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLnvuPPVMY3LIyta2Y4XKsSRidmW33qVY',
    appId: '1:261240129380:android:0b0e91da221b65dfc65c71',
    messagingSenderId: '261240129380',
    projectId: 'asctest-1c4af',
    storageBucket: 'asctest-1c4af.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDqYBV6niLZmXInyliSdcr3RZwOMMQynsw',
    appId: '1:261240129380:ios:92febef15bd6284dc65c71',
    messagingSenderId: '261240129380',
    projectId: 'asctest-1c4af',
    storageBucket: 'asctest-1c4af.appspot.com',
    iosBundleId: 'com.firgobhaktiar.ascTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDqYBV6niLZmXInyliSdcr3RZwOMMQynsw',
    appId: '1:261240129380:ios:ec5500eb388f18f7c65c71',
    messagingSenderId: '261240129380',
    projectId: 'asctest-1c4af',
    storageBucket: 'asctest-1c4af.appspot.com',
    iosBundleId: 'com.firgobhaktiar.ascTest.RunnerTests',
  );
}
