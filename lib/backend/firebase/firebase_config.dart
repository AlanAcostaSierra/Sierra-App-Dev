import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBMAt8vX1sa3qaga7F5ufM1siBLlofEGKM",
            authDomain: "alan-buildship-02.firebaseapp.com",
            projectId: "alan-buildship-02",
            storageBucket: "alan-buildship-02.appspot.com",
            messagingSenderId: "781900827685",
            appId: "1:781900827685:web:fecb2c10f237409b7a03cc",
            measurementId: "G-TR4MYDS1NE"));
  } else {
    await Firebase.initializeApp();
  }
}
