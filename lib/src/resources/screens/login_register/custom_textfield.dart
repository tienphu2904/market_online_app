import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.icon,
      this.hint,
      this.obscure = false,
      this.errorText,
      this.onSaved,
      this.controller});

  final FormFieldSetter<String> onSaved;
  final Icon icon;
  final String hint;
  final bool obscure;
  final String errorText;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        onSaved: onSaved,
        controller: controller,
        autofocus: true,
        obscureText: obscure,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          errorText: errorText,
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.grey,
          ),
          hintText: hint,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: Container(
            height: 50.0,
            child: IconTheme(
              data: IconThemeData(color: Colors.black),
              child: icon,
            ),
          ),
        ),
      ),
    );
  }
}
