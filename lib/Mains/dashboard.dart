import 'package:flutter/material.dart';

Widget dashboard() {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.only(left: 15.0, top: 20.0),
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName: Text(
            "Guard's Name",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
            ),
          ),
          accountEmail: Text(
            "Society Name",
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.black,
            ),
          ),
          currentAccountPicture: CircleAvatar(),
        ),
      ],
    ),
  );
}
