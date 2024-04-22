import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
      if (kIsWeb) {
      await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: "AIzaSyBpmjKGEyfKo1JRVZsHdew73GVpETrhnAU",
      authDomain: "workshop-test-8b050.firebaseapp.com",
      projectId: "workshop-test-8b050",
      storageBucket: "workshop-test-8b050.appspot.com",
      messagingSenderId: "539526898334",
      appId: "1:539526898334:web:f039f98cd9d0269959118f",
      measurementId: "G-MWWCDKYV0V"
    ));
    } else {
      await Firebase.initializeApp();
    }
  
}
