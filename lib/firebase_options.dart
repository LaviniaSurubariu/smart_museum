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
    apiKey: 'AIzaSyCiMm0iRa7EEjP9873XfE0wLCigzJwJFLM',
    appId: '1:490449398409:web:93d40d8601861c898c7458',
    messagingSenderId: '490449398409',
    projectId: 'smartmuseum-b4776',
    authDomain: 'smartmuseum-b4776.firebaseapp.com',
    storageBucket: 'smartmuseum-b4776.appspot.com',
    measurementId: 'G-J56BEDS35Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTYqik8SAZIR7b-EY3M14t3o1hM9Ej-ak',
    appId: '1:490449398409:android:63ab36a7e8365f928c7458',
    messagingSenderId: '490449398409',
    projectId: 'smartmuseum-b4776',
    storageBucket: 'smartmuseum-b4776.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOlT2Y-jGikg-5zV1sUNbZSizPWwDFzjo',
    appId: '1:490449398409:ios:d225a20fe98a28ce8c7458',
    messagingSenderId: '490449398409',
    projectId: 'smartmuseum-b4776',
    storageBucket: 'smartmuseum-b4776.appspot.com',
    iosBundleId: 'com.smartMuseum.smartMuseum',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDOlT2Y-jGikg-5zV1sUNbZSizPWwDFzjo',
    appId: '1:490449398409:ios:d225a20fe98a28ce8c7458',
    messagingSenderId: '490449398409',
    projectId: 'smartmuseum-b4776',
    storageBucket: 'smartmuseum-b4776.appspot.com',
    iosBundleId: 'com.smartMuseum.smartMuseum',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCiMm0iRa7EEjP9873XfE0wLCigzJwJFLM',
    appId: '1:490449398409:web:9394dd12a38446008c7458',
    messagingSenderId: '490449398409',
    projectId: 'smartmuseum-b4776',
    authDomain: 'smartmuseum-b4776.firebaseapp.com',
    storageBucket: 'smartmuseum-b4776.appspot.com',
    measurementId: 'G-K0ZYY8GEYT',
  );
}
