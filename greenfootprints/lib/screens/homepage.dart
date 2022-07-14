import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/images/login.png'),
          Container(
              padding: EdgeInsets.all(35.0),
              child: Text('Welcome User!', style: TextStyle(fontSize: 36.0))),
        ],
      ),
    );
  }
}
