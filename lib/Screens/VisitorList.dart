import 'package:flutter/material.dart';

import 'package:gate_app/ExtraFiles/lists.dart';

class VisList extends StatefulWidget {
  @override
  _VisListState createState() => _VisListState();
}

class _VisListState extends State<VisList> {
  Lists lists_helper = Lists();
  var listItems = lists_helper.getVisitorList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Container(
              padding: EdgeInsets.only(top: 20, left: 5, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.white,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Text(
                    'All Visitors',
                    style: TextStyle(fontSize: 23),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_pin,
                      color: Colors.black.withOpacity(0.6),
                      size: 34,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          getListView(),
        ],
      ),
    );
  }

  Widget getListView() {
    var listView = ListView.builder(
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(top: 7, left: 7, right: 7),
          child: Card(),
        );
      },
    );
  }
}
