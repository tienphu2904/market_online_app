import 'package:flutter/material.dart';

class SliverHomeAppBar extends StatelessWidget {
  SliverHomeAppBar({this.onMenuIconPressed, this.onLogoutPressed});
  final VoidCallback onMenuIconPressed;
  final VoidCallback onLogoutPressed;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Center(
        child: Text("CHỢ ONLINE"),
      ),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: onMenuIconPressed,
      ),
      actions: <Widget>[
        Stack(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: onLogoutPressed,
            ),
            Positioned(
              top: 8.0,
              right: 8.0,
              child: Container(
                width: 13.0,
                height: 13.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.redAccent,
                ),
                child: Text(
                  "0",
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
      expandedHeight: 120.0,
      pinned: true,
      bottom: PreferredSize(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 48.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 5.0,
                  offset: Offset(0.0, 0.0),
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.search, color: Colors.grey[700]),
                  onPressed: () {},
                ),
                Expanded(
                  child: Text(
                    "Nhập sản phẩm, thương hiệu hay mọi thứ bạn cần",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16.0,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  width: 32.0,
                )
              ],
            ),
          ),
        ),
        preferredSize: Size.fromHeight(24.0),
      ),
    );
  }
}
