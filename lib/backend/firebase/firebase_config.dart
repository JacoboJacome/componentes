import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBCQ9DE7i2wkTxh62fTYfk95tX7NktaB4o",
            authDomain: "componentes-c1968.firebaseapp.com",
            projectId: "componentes-c1968",
            storageBucket: "componentes-c1968.appspot.com",
            messagingSenderId: "154308715839",
            appId: "1:154308715839:web:d52b6e238aa6dc46035f8a"));
  } else {
    await Firebase.initializeApp();
  }
}
