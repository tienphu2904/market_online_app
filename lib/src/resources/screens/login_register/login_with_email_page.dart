import 'package:flutter/material.dart';

class LoginWithEmailPage extends StatefulWidget {
  @override
  _LoginWithEmailPageState createState() => _LoginWithEmailPageState();
}

class _LoginWithEmailPageState extends State<LoginWithEmailPage> {
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
                  child: TextFormField(
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
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: TextFormField(
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
                      onPressed: () {},
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
                      onTap: _onLoginWithPhonePressed,
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

  _onLoginWithPhonePressed() {
  }
}
