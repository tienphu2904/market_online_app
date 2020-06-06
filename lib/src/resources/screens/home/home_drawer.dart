import 'package:flutter/material.dart';
import 'package:market_online_app/src/services/auth_service.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          Container(
            height: 24.0,
            color: Colors.blue[800],
          ),
          Container(
            color: Colors.blue,
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 40.0,
              ),
              title: Text(
                "Viết Hoàng",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              subtitle: Text(
                "lightz579@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            selected: true,
            leading: Icon(Icons.home),
            title: Text(
              "Trang chủ",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.view_list),
            title: Text(
              "Danh sách ngành hàng",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.receipt),
            title: Text(
              "Quản lý đơn hàng",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(
              "Sản phẩm yêu thích",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(
              "Quản lý tài khoản",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text(
              "Thông báo",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              "HỖ TRỢ",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.grey[600]),
            ),
          ),
          ListTile(
            title: Text(
              "Cài đặt",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text(
              "Đăng xuất",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              AuthService().signOut();
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
