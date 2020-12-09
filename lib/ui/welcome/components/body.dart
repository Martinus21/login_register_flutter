import 'package:flutter/material.dart';

// IMPORT PACKAGE SVG
import 'package:flutter_svg/svg.dart';

// IMPORT COMPONENT
import 'package:login/components/roundedbutton.dart';
import 'package:login/constants.dart';
import 'package:login/ui/login/login_screen.dart';
import 'package:login/ui/register/register_screen.dart';

// IMPORT COMPONENT WELCOME SCREEN
import 'package:login/ui/welcome/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Total Height and Width Screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome Students",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: size.height * 0.03,
            ),

            // SVG IMAGE
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            // END SVG IMAGE

            SizedBox(
              height: size.height * 0.03,
            ),

            // BUTTON
            RoundedButton(
              text: "Login",
              onPress: () {
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
            RoundedButton(
              text: "REGISTER",
              color: kPrimaryLightColor,
              textColor: kPrimaryColor,
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RegisterScreen();
                    },
                  ),
                );
              },
            ),
            // END BUTTON
          ],
        ),
      ),
    );
  }
}
