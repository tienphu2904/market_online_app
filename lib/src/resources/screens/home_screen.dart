import 'package:flutter/material.dart';
import 'package:market_online_app/src/resources/screens/home/box.dart';
import 'package:market_online_app/src/resources/screens/home/home_appbar.dart';
import 'package:market_online_app/src/resources/screens/home/home_drawer.dart';
import 'package:market_online_app/src/resources/screens/home/menu.dart';

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
          ),
          SliverToBoxAdapter(
            child: Menu(
              widget: <Widget>[
                SizedBox(
                  height: 45.0,
                  width: 120.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text("Danh mục", style: TextStyle(fontSize: 18.0),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: SizedBox(
                    height: 45.0,
                    width: 120.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("Xếp hạng", style: TextStyle(fontSize: 18.0),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: SizedBox(
                    height: 45.0,
                    width: 120.0,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text("Giảm giá", style: TextStyle(fontSize: 18.0),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Box(
              paddingTop: 20.0,
              title: Container(
                height: 30,
                child: Center(
                  child: Text(
                    "Tất cả",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              action: Container(
                height: 30,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    "XEM THÊM",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              child: Container(
                color: Colors.white,
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.amber),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.amber),
                    ),
                  ],
                ),
              ),
              dividerBottomColor: Colors.black,
            ),
          ),
          SliverToBoxAdapter(
            child: Box(
              paddingTop: 0,
              title: Container(
                child: Center(
                  child: Text(
                    "Phổ biến",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              action: FlatButton(
                onPressed: () {},
                child: Text(
                  "XEM THÊM",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              child: Container(
                height: 100,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.amber),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.amber),
                    ),
                  ],
                ),
              ),
              dividerBottomColor: Colors.black,
            ),
          ),
          SliverToBoxAdapter(
            child: Box(
              paddingTop: 0,
              title: Container(
                child: Center(
                  child: Text(
                    "Có thể bạn quan tâm",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              action: FlatButton(
                onPressed: () {},
                child: Text(
                  "XEM THÊM",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              child: Container(
                height: 100,
                color: Colors.white,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.amber),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Container(width: 100, color: Colors.amber),
                    ),
                  ],
                ),
              ),
              dividerBottomColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
