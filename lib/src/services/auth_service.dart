import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:market_online_app/src/resources/screens/home_screen.dart';
import 'package:market_online_app/src/resources/screens/login_register/tab_login_register.dart';

class AuthService {
  handleAuth() {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return TabLoginRegister();
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
