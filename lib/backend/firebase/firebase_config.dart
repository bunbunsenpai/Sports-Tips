import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBSngtDot1FZzl1Cd5lFFwX-XFog8fjhLA",
            authDomain: "sports-tips-application-0p9kkt.firebaseapp.com",
            projectId: "sports-tips-application-0p9kkt",
            storageBucket: "sports-tips-application-0p9kkt.firebasestorage.app",
            messagingSenderId: "130876357628",
            appId: "1:130876357628:web:faa51a1d63cec2f8fa9079"));
  } else {
    await Firebase.initializeApp();
  }
}
