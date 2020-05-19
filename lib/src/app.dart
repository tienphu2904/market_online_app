import 'package:flutter/material.dart';
import 'package:market_online_app/src/resources/tab_login_register.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabLoginRegister(),
    );
  }
}