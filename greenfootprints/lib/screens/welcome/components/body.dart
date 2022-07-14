import 'package:flutter/material.dart';
import 'package:login_app/components/rounded_button.dart';
import 'package:login_app/screens/welcome/components/background.dart';
import 'package:flutter_svg/svg.dart';

import '../../login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "GREEN\nFOOTPRINTS",
              style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.0),
            SvgPicture.asset(
              "assets/icons/welcome.svg",
              height: size.height * 0.43,
            ),
            SizedBox(height: size.height * 0.0),
            RoundedButton(
              text: "Next",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
