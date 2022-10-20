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
    apiKey: 'AIzaSyDdfzk6Nx5_eTAhdd1BNIpOiHhOigBypjs',
    appId: '1:74209983534:web:73b53d8fc6eaf7313073bf',
    messagingSenderId: '74209983534',
    projectId: 'farm-global-8e0d2',
    authDomain: 'farm-global-8e0d2.firebaseapp.com',
    storageBucket: 'farm-global-8e0d2.appspot.com',
    measurementId: 'G-W6E7NWPMK3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC7e1qEbQR-ataO_i57opATolnLiXHFYHc',
    appId: '1:74209983534:android:504c2ecdf08b2ed43073bf',
    messagingSenderId: '74209983534',
    projectId: 'farm-global-8e0d2',
    storageBucket: 'farm-global-8e0d2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXaROvr2x98RQYI_NGcOvHQvnpQwhmJJg',
    appId: '1:74209983534:ios:5e81dbba611cac603073bf',
    messagingSenderId: '74209983534',
    projectId: 'farm-global-8e0d2',
    storageBucket: 'farm-global-8e0d2.appspot.com',
    iosClientId:
        '74209983534-gpr48ski53s4jqast25grj0ninntiaq3.apps.googleusercontent.com',
    iosBundleId: 'com.example.record',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXaROvr2x98RQYI_NGcOvHQvnpQwhmJJg',
    appId: '1:74209983534:ios:5e81dbba611cac603073bf',
    messagingSenderId: '74209983534',
    projectId: 'farm-global-8e0d2',
    storageBucket: 'farm-global-8e0d2.appspot.com',
    iosClientId:
        '74209983534-gpr48ski53s4jqast25grj0ninntiaq3.apps.googleusercontent.com',
    iosBundleId: 'com.example.record',
  );
}
