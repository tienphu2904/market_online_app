import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  Box({this.title, this.action, @required this.child, this.dividerBottomColor, this.paddingTop});

  final Widget action;
  final Widget title;
  final Widget child;
  final Color dividerBottomColor;
  final double paddingTop;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, paddingTop, 10, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              title,
              action,
            ],
          ),
          Container(
            child: Divider(color: Colors.grey),
          ),
          child,
          Container(
            height: 30,
            child: Divider(
              color: dividerBottomColor,
            ),
          )
        ],
      ),
    );
  }
}
