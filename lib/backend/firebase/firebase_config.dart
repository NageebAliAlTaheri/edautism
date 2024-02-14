import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCARnG5BRvxnUZU83916OseFkqZkNpdjFA",
            authDomain: "dataedautism.firebaseapp.com",
            projectId: "dataedautism",
            storageBucket: "dataedautism.appspot.com",
            messagingSenderId: "440484752099",
            appId: "1:440484752099:web:8eb079d0665c9fd83f33d6"));
  } else {
    await Firebase.initializeApp();
  }
}
