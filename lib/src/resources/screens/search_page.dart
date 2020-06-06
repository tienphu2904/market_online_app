import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.grey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 50,
                color: Colors.blue,
              ),
              Container(
                color: Colors.blue,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      height: 48.0,
                      width: 270,
                      color: Colors.white,
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                            hintText:
                                "Nhập sản phẩm, thương hiệu hay mọi thứ bạn cần",
                            prefixIcon: Container(
                              height: 48.0,
                              child: Icon(Icons.search),
                            )),
                        onEditingComplete: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 25,
                color: Colors.blue,
              ),
              Container(
                color: Colors.white,
                height: 70,
                width: double.infinity,
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                  child: Text(
                    "Từ khóa tìm kiếm phổ biến",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Divider(
                  color: Colors.black,
                ),
              ),
              Container(
                height: 215,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: SizedBox(
                            height: 48,
                            width: 100,
                            child: RaisedButton(
                              color: Colors.grey,
                              onPressed: () {},
                              child: Text(
                                "",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
