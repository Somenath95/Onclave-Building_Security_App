import 'package:flutter/material.dart';

import 'dashboard.dart';

Widget mainBody(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(left: 0.0, top: 30.0, right: 0.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        //For the dummy AppBAr
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 30.0,
              ),
              tooltip: 'open SideBar',
              onPressed: () => dashboard(),
            ),
            Text(
              "App Name",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.person_outline,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () {},
              tooltip: 'Your Profile',
            ),
          ],
        ),
        Divider(
          height: 4.0,
          color: Colors.orangeAccent,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        //For New Visitor and All Visitor buttons
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MaterialButton(
              height: 150.0,
              color: Colors.orangeAccent,
              highlightColor: Colors.white,
              elevation: 0.8,
              minWidth: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.person_add,
                    color: Colors.black,
                    size: 50.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "New Visitor",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              onPressed: () => Navigator.pushNamed(context, '/new_visitor'),
            ),
            MaterialButton(
              height: 150.0,
              color: Colors.orangeAccent,
              highlightColor: Colors.white,
              elevation: 0.8,
              minWidth: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.people,
                    color: Colors.black,
                    size: 55.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "All Visitors",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              onPressed: () => Navigator.of(context).pushNamed('/vis_list'),
            ),
          ],
        ),

        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        //Second Row For Schedule Visitors and Maids Buttons
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MaterialButton(
              height: 150.0,
              color: Colors.orangeAccent,
              highlightColor: Colors.white,
              elevation: 0.8,
              minWidth: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.calendar_today,
                        color: Colors.black,
                        size: 50.0,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "Scheduled",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "Visitors",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
            MaterialButton(
              height: 150.0,
              color: Colors.orangeAccent,
              highlightColor: Colors.white,
              elevation: 0.8,
              minWidth: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.people,
                    color: Colors.black,
                    size: 55.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "Maids",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0),
        ),
        //Second Row For Schedule Visitors and Maids Buttons
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MaterialButton(
              height: 150.0,
              color: Colors.orangeAccent,
              highlightColor: Colors.white,
              elevation: 0.8,
              minWidth: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          color: Colors.white,
                          image: DecorationImage(
                            image: ExactAssetImage("assets/images/amazon.png"),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 38, left: 50),
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          color: Colors.yellowAccent,
                          image: DecorationImage(
                            image:
                                ExactAssetImage("assets/images/flipkart.png"),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 48, right: 40),
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          color: Color(0X0DFF00),
                          image: DecorationImage(
                            image: ExactAssetImage("assets/images/zomato.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "Delivery",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
            MaterialButton(
              height: 150.0,
              minWidth: 150,
              color: Colors.orangeAccent,
              highlightColor: Colors.white,
              elevation: 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.account_box,
                    color: Colors.black,
                    size: 55.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0),
                  ),
                  Text(
                    "Others",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {
                // Navigator.pushNamed(context, '/second');
                Navigator.pushNamed(context, "/other_page");
              },
            ),
          ],
        ),
      ],
    ),
  );
}
