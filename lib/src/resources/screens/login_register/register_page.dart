import 'package:flutter/material.dart';
import 'package:market_online_app/src/blocs/auth_bloc.dart';
import 'package:market_online_app/src/resources/screens/login_register/custom_textfield.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _showPass = false;
  String _mail;
  String _phone;
  String _password;
  String _name;
  TextEditingController _mailController = new TextEditingController();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AuthBloc authBloc = new AuthBloc();

  PersistentBottomSheetController _sheetController;
  bool _autoValidate = false;

  void initState() {
    super.initState();
  }

  void dispose() {
    super.dispose();
    authBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            autovalidate: _autoValidate,
            child: Column(
              children: <Widget>[
                StreamBuilder(
                  stream: authBloc.mailSteam,
                  builder: (context, snapshot) => CustomTextField(
                    onSaved: (input) {
                      _mail = input;
                    },
                    controller: _mailController,
                    errorText: snapshot.hasError ? snapshot.error : null,
                    icon: Icon(Icons.email),
                    hint: "Email",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: StreamBuilder(
                    stream: authBloc.phoneController,
                    builder: (context, snapshot) =>CustomTextField(
                      onSaved: (input) {
                        _phone = input;
                      },
                      controller: _phoneController,
                      errorText: snapshot.hasError ? snapshot.error : null,
                      icon: Icon(Icons.phone),
                      hint: "Số điện thoại",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      StreamBuilder(
                        stream: authBloc.passController,
                        builder: (context, snapshot) => CustomTextField(
                          obscure: !_showPass,
                          onSaved: (input) {
                            _password = input;
                          },
                          controller: _passController,
                          errorText: snapshot.hasError ? snapshot.error : null,
                          icon: Icon(Icons.lock),
                          hint: "Mật khẩu",
                        ),
                      ),
                      FlatButton(
                        onPressed: _onShowPassToggle,
                        child: Text(
                          _showPass ? "Ẩn" : "Hiện",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: StreamBuilder(
                    stream: authBloc.nameController,
                    builder: (context, snapshot) => CustomTextField(
                      onSaved: (input) {
                        _name = input;
                      },
                      controller: _nameController,
                      errorText: snapshot.hasError ? snapshot.error : null,
                      icon: Icon(Icons.person),
                      hint: "Họ tên",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: SizedBox(
                    height: 60.0,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: _validateSignUpInput,
                      color: Colors.redAccent,
                      child: Text(
                        "ĐĂNG KÝ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
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

  void _onShowPassToggle(){
    setState( () {
      _showPass = !_showPass;
    });
  }

  void _validateSignUpInput() {
    if(authBloc.isValid(_mail, _phone, _password, _name))
      return;
  }
}
