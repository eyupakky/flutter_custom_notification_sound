import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }


  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAinBpE1jqbgEN1KH7uYogahdQri7f50U4',
    appId: '1:660464431762:android:56217ad62ca35e1389ac4b',
    messagingSenderId: '660464431762',
    projectId: 'customsound-4d314',
    databaseURL: 'https://customsound-4d314-default-rtdb.firebaseio.com/',
    storageBucket: 'customsound-4d314.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCOCKCvUlP9kT3-t_ivo-WwQeeEQYZMW8k',
    appId: '1:45316533176:ios:1afab8192d4fba4814bd4d',
    messagingSenderId: '45316533176',
    projectId: 'macyap-a07f4',
    databaseURL: 'https://macyap-a07f4-default-rtdb.firebaseio.com',
    storageBucket: 'macyap-a07f4.appspot.com',
    androidClientId:
    '45316533176-cepgpdp16h0ckaf7ugjki25sinmqdefm.apps.googleusercontent.com',
    iosClientId:
    '45316533176-av4dbdpccrvec5mtjitmuqdhmdmev5ak.apps.googleusercontent.com',
    iosBundleId: 'com.eyupakky.halisaha',
  );

}