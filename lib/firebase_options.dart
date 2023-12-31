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
    apiKey: 'AIzaSyCsspZo81t2YA1ziXwZQ1St3u_U8nNXQYY',
    appId: '1:599372407179:web:81929349373d030cb78f8e',
    messagingSenderId: '599372407179',
    projectId: 'my-labor-app-project',
    authDomain: 'my-labor-app-project.firebaseapp.com',
    storageBucket: 'my-labor-app-project.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyClY5IDuqolbQ122AZ1ED90PPdJuKI3Mpc',
    appId: '1:599372407179:android:9ec119eefd266e17b78f8e',
    messagingSenderId: '599372407179',
    projectId: 'my-labor-app-project',
    storageBucket: 'my-labor-app-project.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCv39j180DtBjWfvNA_PBEdsSl9u2SwQnQ',
    appId: '1:599372407179:ios:7807df2da9670e00b78f8e',
    messagingSenderId: '599372407179',
    projectId: 'my-labor-app-project',
    storageBucket: 'my-labor-app-project.appspot.com',
    androidClientId: '599372407179-4sfo6b5q4ilgp28gosua34udeuij5kct.apps.googleusercontent.com',
    iosClientId: '599372407179-vavf8jo7591e32tl0ctijukatojhfpsq.apps.googleusercontent.com',
    iosBundleId: 'com.example.labor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCv39j180DtBjWfvNA_PBEdsSl9u2SwQnQ',
    appId: '1:599372407179:ios:af9f40ebaba6ca49b78f8e',
    messagingSenderId: '599372407179',
    projectId: 'my-labor-app-project',
    storageBucket: 'my-labor-app-project.appspot.com',
    androidClientId: '599372407179-4sfo6b5q4ilgp28gosua34udeuij5kct.apps.googleusercontent.com',
    iosClientId: '599372407179-49l98aud75h2ddf6n1unfd0v6eu28be7.apps.googleusercontent.com',
    iosBundleId: 'com.example.labor.RunnerTests',
  );
}
