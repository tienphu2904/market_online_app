import 'package:flutter/material.dart';
import 'login_with_email_page.dart';
import 'register_page.dart';



class TabLoginRegister extends StatefulWidget {
  @override
  _TabLoginRegisterState createState() => _TabLoginRegisterState();
}

class _TabLoginRegisterState extends State<TabLoginRegister> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {},
          ),
          title: Text("Đăng nhập / Đăng ký"),
          bottom: TabBar(
            indicatorColor: Colors.yellow[300],
            tabs: <Widget>[
              Tab(
                child: Text(
                  "ĐĂNG NHẬP",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "ĐĂNG KÝ",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            LoginWithEmailPage(),
            RegisterPage(),
          ],
        ),
      ),
    );
  }

  _onClosedPressed() {
    // Navigator.of(context)
    //     .push(MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
