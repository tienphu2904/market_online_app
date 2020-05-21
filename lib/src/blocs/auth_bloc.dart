import 'dart:async';

class AuthBloc {
  StreamController _mailController = new StreamController();
  StreamController _phoneController = new StreamController();
  StreamController _passController = new StreamController();
  StreamController _nameController = new StreamController();

  Stream get mailSteam => _mailController.stream;
  Stream get phoneController => _phoneController.stream;
  Stream get passController => _passController.stream;
  Stream get nameController => _nameController.stream;

  void dispose(){
    _mailController.close();
    _phoneController.close();
    _passController.close();
    _nameController.close();
  }

  bool isValid(String email, String phone, String password, String name) {
    String mailRegex =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(mailRegex);
    if (email.isEmpty){
      _mailController.sink.addError("Nhập email");
      return false;
    }
    if (!regex.hasMatch(email)){
      _mailController.addError("Vui lòng nhập email hợp lệ");
      return false;
    }
    _mailController.sink.add("");

    String phoneRegex = r'^(?:[+]84)?[0-9]{9,10}$';
    RegExp regex2 = new RegExp(phoneRegex);
    if (phone.isEmpty){
      _phoneController.sink.addError("Nhập số điện thoại");
      return false;
    }
    if (!regex2.hasMatch(phone)){
      _phoneController.addError("Vui lòng nhập số điện thoại hợp lệ");
      return false;
    }
    _phoneController.sink.add("");

    if(password.isEmpty || password.length < 6) {
      _passController.sink.addError("Mật khẩu phải trên 6 ký tự");
      return false;
    }
    _passController.sink.add("");

    if(name.isEmpty){
      _nameController.sink.addError("Nhập họ tên");
      return false;
    }
    _nameController.sink.add("");
    return true;
  }
}
