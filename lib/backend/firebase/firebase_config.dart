import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCNOz4GHD7n70GZV3vYzXEOKipJ6o06gog",
            authDomain: "componentes-full.firebaseapp.com",
            projectId: "componentes-full",
            storageBucket: "componentes-full.appspot.com",
            messagingSenderId: "328445998100",
            appId: "1:328445998100:web:511a6e71f02f4f3bc9e301"));
  } else {
    await Firebase.initializeApp();
  }
}
