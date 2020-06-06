import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:market_online_app/src/blocs/auth_bloc.dart';
import 'package:market_online_app/src/custom/custom_textfield.dart';
import 'package:market_online_app/src/resources/dialog/loading_dialog.dart';
import 'package:market_online_app/src/resources/dialog/msg_dialog.dart';
import 'package:market_online_app/src/resources/screens/home_screen.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _mailController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();

  AuthBloc authBloc = new AuthBloc();

  bool _showPass = true;

  void dispose(){
    super.dispose();
    authBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: StreamBuilder(
                  stream: authBloc.mailStream,
                  builder: (context, snapshot) {
                    return CustomTextField(
                      controller: _mailController,
                      errorText: snapshot.hasError ? snapshot.error : null,
                      hint: "Email",
                      icon: Icon(
                        Icons.mail,
                      ),
                    );
                  }
                ),
              ),
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  StreamBuilder(
                    stream: authBloc.passStream,
                    builder: (context, snapshot) {
                      return CustomTextField(
                        controller: _passController,
                        errorText: snapshot.hasError ? snapshot.error : null,
                        hint: "Mật khẩu",
                        obscure: !_showPass,
                        icon: Icon(
                          Icons.lock,
                        ),
                      );
                    }
                  ),
                  FlatButton(
                    onPressed: _onShowPassPressed,
                    child: Text(
                      _showPass ? "Ẩn" : "Hiện",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              StreamBuilder(
                stream: authBloc.phoneStream,
                builder: (context, snapshot) {
                  return CustomTextField(
                    controller: _phoneController,
                    errorText: snapshot.hasError ? snapshot.error : null,
                    hint: "Điện thoại",
                    icon: Icon(Icons.phone),
                    textInputType: TextInputType.phone,
                  );
                }
              ),
              StreamBuilder(
                stream: authBloc.nameStream,
                builder: (context, snapshot) {
                  return CustomTextField(
                    controller: _nameController,
                    errorText: snapshot.hasError ? snapshot.error : null,
                    hint: "Họ tên",
                    icon: Icon(Icons.person),
                  );
                }
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.redAccent,
                    onPressed: _onSignUpClicked,
                    child: Text(
                      "ĐĂNG KÝ",
                      style: TextStyle(
                          fontSize: 18,
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
    );
  }

  _onShowPassPressed() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  _onSignUpClicked() {
    String mail = _mailController.text;
    String pass = _passController.text;
    String phone = _phoneController.text;
    String name = _nameController.text;
    if(authBloc.isValid(mail, pass, phone, name)) {
      authBloc.signUp(mail, pass, phone, name, () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
      }, (msg) {
        MsgDialog.showMsgDialog(context, "Đăng ký", msg);
      });
    }
  }
}
