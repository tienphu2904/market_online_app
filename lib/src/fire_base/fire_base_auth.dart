import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/services.dart';

class FirAuth {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  PlatformException error;

  void signUp(String mail, String pass, String name, String phone,
      Function onSuccess, Function(String) onRegisterError) {
    _firebaseAuth
        .createUserWithEmailAndPassword(email: mail, password: pass)
        .then((result) {
      // create user
      _createUser(result.user.uid, name, phone, onSuccess, onRegisterError);
    }).catchError((onError) {
      _onSignUpError(onError, onRegisterError);
    });
  }

  _createUser(String userId, String name, String phone, Function onSuccess,
      Function(String) onRegisterError) {
    var user = {
      "name": name,
      "phone": phone,
    };
    var ref = FirebaseDatabase.instance.reference().child("users");
    ref.child(userId).set(user).then((result) {
      // success navigate to home screen
      onSuccess();
    }).catchError((error) {
      // err
      onRegisterError("Đăng ký thất bại, vui lòng thử lại");
    });
  }

  void _onSignUpError(String code, Function(String) onRegisterError) {
    switch (code) {
      case "ERROR_INVALID_EMAIL":
      case "ERROR_INVALID_CREDENTIAL":
        onRegisterError("Email không hợp lệ");
        break;
      case "ERROR_WEAK_PASSWORD":
        onRegisterError("Mật khẩu không đủ mạnh");
        break;
      case "ERROR_EMAIL_ALREADY_IN_USE":
        onRegisterError("Email đã được sử dụng");
        break;
      default:
        onRegisterError("Đăng ký thất bại, vui lòng thử lại");
        break;
    }
  }

  void signInWithMail(String email, String password, Function onSuccess, Function(String) onSignInError) {
    _firebaseAuth.signInWithEmailAndPassword(email: email, password: password).then((result) {
      onSuccess();
    }).catchError((onError) {
      onError("Đăng nhập thất bại, vui lòng đăng nhập lại");
    });
  }
}
