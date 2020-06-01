import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {this.controller,
      this.hint,
      this.icon,
      this.obscure = false,
      this.textInputType,
      this.errorText});

  TextInputType textInputType = TextInputType.text;
  TextEditingController controller;
  bool obscure;
  String hint;
  Icon icon;
  String errorText = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          autofocus: true,
          keyboardType: textInputType,
          style: TextStyle(fontSize: 16, color: Colors.black),
          decoration: InputDecoration(
            errorText: errorText,
            hintStyle: TextStyle(
                fontSize: 16,
                color: Colors.grey[500],
                fontWeight: FontWeight.bold),
            hintText: hint,
            prefixIcon: Container(
              height: 50,
              child: icon,
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        ),
      ),
    );
  }
}
