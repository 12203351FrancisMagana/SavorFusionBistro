import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAGyq4lKpTuzsHwuC-sX6v26a6IOaCiNd8",
            authDomain: "savorfusionbistro.firebaseapp.com",
            projectId: "savorfusionbistro",
            storageBucket: "savorfusionbistro.appspot.com",
            messagingSenderId: "363432480700",
            appId: "1:363432480700:web:9b24740e1c1570051725b9"));
  } else {
    await Firebase.initializeApp();
  }
}
