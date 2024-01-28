import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCESJIdtMDpyaC6NaFd7PftLduN2-nUN9E",
            authDomain: "resistance-1aa45.firebaseapp.com",
            projectId: "resistance-1aa45",
            storageBucket: "resistance-1aa45.appspot.com",
            messagingSenderId: "780221337444",
            appId: "1:780221337444:web:19a9fc8b8b66449b637471",
            measurementId: "G-08T9ZHTDJD"));
  } else {
    await Firebase.initializeApp();
  }
}
