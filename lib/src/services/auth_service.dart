import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:market_online_app/src/resources/login_page.dart';
import 'package:market_online_app/src/resources/screens/home_screen.dart';

class AuthService {
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return DemoLoginHome();
        }
      },
    );
  }

  void signOut() {
    FirebaseAuth.instance.signOut();
  }

  void signIn(AuthCredential authCredential) {
    FirebaseAuth.instance.signInWithCredential(authCredential);
  }
}
