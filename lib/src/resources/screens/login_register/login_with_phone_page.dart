import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:market_online_app/src/resources/screens/home_screen.dart';
import 'package:market_online_app/src/services/auth_service.dart';

class LoginWithPhonePage extends StatefulWidget {
  @override
  _LoginWithPhonePageState createState() => _LoginWithPhonePageState();
}

class _LoginWithPhonePageState extends State<LoginWithPhonePage> {
  String phoneNo;
  String smsCode;
  String verificationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.close), onPressed: goBack),
        title: Text("ĐĂNG NHẬP"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    onChanged: (val) {
                      this.phoneNo = val;
                    },
                    decoration: InputDecoration(
                      labelText: "Số điện thoại",
                      prefixIcon: Container(
                        child: Icon(Icons.phone),
                        height: 50.0,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: SizedBox(
                    height: 60.0,
                    width: double.infinity,
                    child: RaisedButton(
                      color: Colors.red[400],
                      onPressed: verifyPhone,
                      child: Text(
                        "ĐĂNG NHẬP",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> verifyPhone() async {
    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential authResult) {
      AuthService().signIn(authResult);
    };

    final PhoneVerificationFailed verificationFailed =
        (AuthException authException) {
      print('${authException.message}');
    };

    final PhoneCodeSent smsSent = (String verId, [int forceResend]) async {
      this.verificationId = verId;
    };

    final PhoneCodeAutoRetrievalTimeout autoTimoeout = (String verId) {
      this.verificationId = verId;
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNo,
      timeout: Duration(seconds: 5),
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: smsSent,
      codeAutoRetrievalTimeout: autoTimoeout,
    );
  }

  goBack() {
    Navigator.pop(context);
  }
}