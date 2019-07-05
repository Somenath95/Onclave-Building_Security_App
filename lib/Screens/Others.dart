import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gate_app/ExtraFiles/animated_buttons.dart';
import 'package:gate_app/Screens/NoticeBoard.dart';

class OthersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.1), BlendMode.dstATop),
                image: AssetImage("assets/images/guard_3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100, top: 10),
                    ),
                    Text(
                      "Others",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                ),

                //Row for the buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AnimatedButton(
                      // Navigator.push(context, "/notice_board"),
                      animationDuration: const Duration(milliseconds: 1000),
                      text: "Notice Board",
                      iconData: Icons.message,
                      iconSize: 32.0,
                      pageRoute: MaterialPageRoute(
                        builder: (context) => Notices(),
                      ),
                      buttonStyle: ButtonStyle(
                        primaryColor: Colors.white,
                        secondaryColor: Colors.redAccent,
                        elevation: 20.0,
                        initialTextStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.redAccent.shade400,
                        ),
                        finalTextStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                        borderRadius: 10.0,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AnimatedButton(
                      animationDuration: const Duration(milliseconds: 1000),
                      text: "Vehicle Search",
                      iconData: Icons.search,
                      iconSize: 32.0,
                      buttonStyle: ButtonStyle(
                        primaryColor: Colors.white,
                        secondaryColor: Colors.redAccent,
                        elevation: 20.0,
                        initialTextStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.redAccent.shade400,
                        ),
                        finalTextStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                        borderRadius: 10.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    AnimatedButton(
                      animationDuration: const Duration(milliseconds: 1000),
                      text: "Emergency Contacts",
                      iconData: Icons.import_contacts,
                      iconSize: 32.0,
                      buttonStyle: ButtonStyle(
                        primaryColor: Colors.white,
                        secondaryColor: Colors.redAccent,
                        elevation: 20.0,
                        initialTextStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.redAccent.shade400,
                        ),
                        finalTextStyle: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                        borderRadius: 10.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
