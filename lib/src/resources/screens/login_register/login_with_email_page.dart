import 'package:flutter/material.dart';
import 'package:market_online_app/src/app.dart';
import 'package:market_online_app/src/blocs/auth_bloc.dart';
import 'package:market_online_app/src/resources/dialog/msg_dialog.dart';

class LoginWithEmailPage extends StatefulWidget {
  @override
  _LoginWithEmailPageState createState() => _LoginWithEmailPageState();
}

class _LoginWithEmailPageState extends State<LoginWithEmailPage> {
  TextEditingController _mailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();

  AuthBloc authBloc = new AuthBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  child: StreamBuilder(
                    stream: authBloc.mailStream,
                    builder: (context, snapshot) {
                      return TextFormField(
                        controller: _mailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          prefixIcon: Container(
                            child: Icon(Icons.mail),
                            height: 50.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6.0)),
                            borderSide: BorderSide(width: 1, color: Colors.black),
                          ),
                        ),
                      );
                    }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: StreamBuilder(
                    stream: authBloc.passStream,
                    builder: (context, snapshot) {
                      return TextFormField(
                        controller: _passController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Mật khẩu",
                          prefixIcon: Container(
                            height: 50.0,
                            child: Icon(Icons.lock),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          ),
                        ),
                      );
                    }
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: InkWell(
                      child: Text(
                        "Quên mật khẩu?",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.grey[600]),
                      ),
                      onTap: () {},
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
                      onPressed: _onLoginClick,
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
                ),
                Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: InkWell(
                      child: Text(
                        "Đăng nhập bằng số điện thoại",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/phoneLogin');
                      },
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
  _onLoginClick() {
    String email = _mailController.text;
    String pass = _passController.text;
    authBloc.signInWithMail(email, pass, () {
      Navigator.pushNamed(context, '/home');
    },(msg) {
      MsgDialog.showMsgDialog(context, "Đăng nhập", msg);
    });
  }
}
