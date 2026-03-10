import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_demo/firebase_options.dart';

class Auth {
  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
