import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform, kIsWeb;

/// Firebase configuration handler for different platforms
class FirebaseConfig {
  final FirebaseOptions options;

  FirebaseConfig._(this.options);

  factory FirebaseConfig.forCurrentPlatform() {
    if (kIsWeb) {
      throw UnsupportedError(
        'FirebaseOptions have not been configured for web - '
        'please reconfigure using the FlutterFire CLI.',
      );
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return FirebaseConfig._(android);
      case TargetPlatform.iOS:
        return FirebaseConfig._(ios);
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'FirebaseOptions have not been configured for macOS - '
          'please reconfigure using the FlutterFire CLI.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'FirebaseOptions have not been configured for Windows - '
          'please reconfigure using the FlutterFire CLI.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'FirebaseOptions have not been configured for Linux - '
          'please reconfigure using the FlutterFire CLI.',
        );
      default:
        throw UnsupportedError(
          'FirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqmOnu4x4B1c6Ff-RDF8doDdaUp9zySxA',
    appId: '1:938273869324:android:b1484d29d2195f7217a829',
    messagingSenderId: '938273869324',
    projectId: 'sangeet-b4b33',
    storageBucket: 'sangeet-b4b33.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDNtMVg_Dcf2_j82jFhRtnKRxDIpIHqd0o',
    appId: '1:938273869324:ios:d3436db9801821fa17a829',
    messagingSenderId: '938273869324',
    projectId: 'sangeet-b4b33',
    storageBucket: 'sangeet-b4b33.appspot.com',
    iosClientId:
        '938273869324-4jum6vqrp42fidvse6t8ni3unmgp7lq9.apps.googleusercontent.com',
    iosBundleId: 'com.suman.sangeet1150.ios',
  );
}
