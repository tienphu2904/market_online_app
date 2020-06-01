import 'package:flutter/material.dart';

class Menu extends StatelessWidget {

  Menu({this.widget});
  
  List<Widget> widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: widget,
          ),
        ),
        Divider(
          color: Colors.black
        )
      ],
    );
  }
}