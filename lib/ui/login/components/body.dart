import 'package:flutter/material.dart';

// IMPORT SVG
import 'package:flutter_svg/svg.dart';

// IMPORT UI
import 'package:login/ui/login/components/background.dart';

// IMPORT COMPONENT
import 'package:login/components/alreadyhaveanaccountcheck.dart';
import 'package:login/components/roundedbutton.dart';
import 'package:login/components/roundedinputfield.dart';
import 'package:login/components/roundedpasswordfield.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

            SizedBox(
              height: size.height * 0.03,
            ),

            // SVG IMAGE
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            // END SVG IMAGE

            SizedBox(
              height: size.height * 0.03,
            ),

            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),

            RoundedPasswordField(
              hintText: "Password",
              onChanged: (value) {},
            ),

            RoundedButton(
              text: "LOGIN",
              onPress: () {},
            ),

            AlreadyHaveAnAccountCheck(
              pressAlreadyHaveAnAccount: () {},
            )
          ],
        ),
      ),
    );
  }
}
