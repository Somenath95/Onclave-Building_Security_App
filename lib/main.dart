import 'package:flutter/material.dart';
import 'package:gate_app/Screens/NoticeBoard.dart';
import 'package:gate_app/Screens/Others.dart';

import 'Mains/MainPage.dart';
import 'Screens/NewVisitor.dart';
import 'Mains/SplashScreen.dart';
import 'Screens/VisitorList.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SplashScreen(),
      ),
      routes: <String, WidgetBuilder>{
        "/other_page": (context) => OthersPage(),
        "/notice_board": (context) => Notices(),
        "/main_page": (context) => MainPage(),
        "/new_visitor": (context) => NewVisitor(),
        "/vis_list": (context) => VisList(),
      },
    );
  }
}
