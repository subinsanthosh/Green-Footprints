import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_app/screens/calculation.dart';
import 'package:login_app/screens/extra.dart';
import 'package:login_app/screens/homepage.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  final _pageOptions = [
    HomePage(),
    CalPage(),
    MrMultiLineTextFieldAndButton(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryTextTheme: TextTheme(
            // ignore: deprecated_member_use
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Green Footprints'),
          automaticallyImplyLeading: true,
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.logout),
              onPressed: () => Navigator.pop(context, false),
            ),
          ],
        ),
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // ignore: deprecated_member_use
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_comment_outlined),
              // ignore: deprecated_member_use
              title: Text('Calculator'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.textsms_outlined),
              // ignore: deprecated_member_use
              title: Text('Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}
