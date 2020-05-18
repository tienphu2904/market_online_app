import 'package:flutter/material.dart';
import 'package:market_online_app/src/resources/screens/home/home_appbar.dart';
import 'package:market_online_app/src/resources/screens/home/home_drawer.dart';
import 'package:market_online_app/src/services/auth_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: HomeDrawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverHomeAppBar(
            onMenuIconPressed: () {
              _scaffoldKey.currentState.openDrawer();
            },
            onLogoutPressed: () {
              AuthService().signOut();
            },
          ),
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(color: Colors.red[(index % 9) * 100]);
            }),
            itemExtent: 50.0,
          ),
        ],
      ),
    );
  }
}
