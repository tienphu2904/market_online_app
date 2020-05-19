import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPass = false;
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _mailController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: TextField(
                  controller: _phoneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Số điện thoại",
                    prefixIcon: Container(
                      height: 50.0,
                      child: Icon(Icons.phone),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: <Widget>[
                    TextField(
                      controller: _passController,
                      obscureText: _showPass,
                      decoration: InputDecoration(
                        labelText: "Mật khẩu",
                        prefixIcon: Container(
                          child: Icon(Icons.lock),
                          height: 50.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 1.0),
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: _toggleShowPass,
                      child: Text(
                        _showPass ? "Ẩn" : "Hiện",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Họ tên",
                    prefixIcon: Container(
                      child: Icon(Icons.person),
                      height: 50.0,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1.0, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  controller: _mailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Container(
                      height: 50.0,
                      child: Icon(Icons.mail),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.red[400],
                    onPressed: _onSignUpClicked,
                    child: Text(
                      "ĐĂNG KÝ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
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

  void _toggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void _onSignUpClicked(){}
}
