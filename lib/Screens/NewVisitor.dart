import 'package:flutter/material.dart';
import 'package:gate_app/ExtraFiles/custom_clipper.dart';

class NewVisitor extends StatefulWidget {
  @override
  _NewVisitorState createState() => _NewVisitorState();
}

class _NewVisitorState extends State<NewVisitor> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 5),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 10, left: 5),
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
                    'New Visitor',
                    style: TextStyle(fontSize: 23),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.person_pin,
                      size: 34,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 2, left: 20, right: 26),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Visitor's Name",
                        hintText: "Name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2, left: 20, right: 26),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "No. of Visitors",
                        hintText: "How Many?",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2, left: 20, right: 26),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Flat No.",
                        hintText: "Which Flat?",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2, left: 20, right: 26),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Building/Block Name",
                        hintText: "Which Building/Block?",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2, left: 20, right: 26),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Vehicle No.(if any)",
                        hintText: "Vehicle No.",
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(
                        left: 70.0, right: 70.0, top: 50.0),
                    alignment: Alignment.center,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new RaisedButton(
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(40.0)),
                            color: Colors.redAccent,
                            onPressed: () {},
                            child: new Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 20.0,
                                horizontal: 20.0,
                              ),
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Expanded(
                                    child: Text(
                                      "Send Notification",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
