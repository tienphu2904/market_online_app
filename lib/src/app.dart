import 'package:flutter/material.dart';
import 'package:market_online_app/src/resources/screens/home_screen.dart';
import 'package:market_online_app/src/services/auth_service.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuth(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => new HomeScreen(),
      },
    );
  }
}