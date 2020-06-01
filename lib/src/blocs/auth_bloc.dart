import 'dart:async';

import 'package:market_online_app/src/fire_base/fire_base_auth.dart';

class AuthBloc {
  StreamController _mailController = new StreamController();
  StreamController _phoneController = new StreamController();
  StreamController _nameController = new StreamController();
  StreamController _passController = new StreamController();

  Stream get mailStream => _mailController.stream;
  Stream get phoneStream => _phoneController.stream;
  Stream get nameStream => _nameController.stream;
  Stream get passStream => _passController.stream;

  FirAuth _firAuth = new FirAuth();

  bool isValid(String mail, String pass, String phone, String name) {
    //validate email
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if(mail.isEmpty){
      _mailController.sink.addError("Vui lòng nhập email");
      return false;
    }
    if(!regex.hasMatch(mail)){
      _mailController.sink.addError("Vui lòng nhập đúng định dạng email");
      return false;
    }
    _mailController.sink.add("");

    Pattern pattern2 = r'^\+84[0-9]{9,10}$';
    RegExp regex2 = new RegExp(pattern2);
    if(phone.isEmpty) {
      _phoneController.sink.addError("Vui lòng nhập số điện thoại");
      return false;
    }
    if(!regex2.hasMatch(phone)) {
      _phoneController.sink.addError("Vui lòng nhập đúng định dạng");
      return false;
    }
    _phoneController.sink.add("");

    if(pass.isEmpty || pass.length < 6){
      _passController.sink.addError("Mật khẩu phải trên 6 kí tự");
      return false;
    }
    _passController.sink.add("");

    if(name.isEmpty) {
      _nameController.sink.addError("Vui lòng nhập tên");
      return false;
    }
    _nameController.sink.add("");
    return true;
  }

  void dispose(){
    _mailController.close();
    _nameController.close();
    _passController.close();
    _phoneController.close();
  }

  void signUp(String mail, String pass, String phone, String name, Function onSuccess, Function(String) onRegisterError){
    _firAuth.signUp(mail, pass, name, phone, onSuccess, onRegisterError);
  }
}
