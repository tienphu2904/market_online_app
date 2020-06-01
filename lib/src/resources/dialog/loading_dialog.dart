import 'package:flutter/material.dart';

class LoadingDialog {
  static void showLoadingDialog(BuildContext context, String msg) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => new Dialog(
        child: Container(
          color: Colors.white,
          height: 100,
          child: Column(
            children: <Widget>[
              CircularProgressIndicator(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(
                  msg,
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  static void hideLoadingDialog(BuildContext context) {
    Navigator.of(context).pop(LoadingDialog);
  }
}
