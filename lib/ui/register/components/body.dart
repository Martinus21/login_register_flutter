import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/ui/register/components/background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Register",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.3,
          ),
        ],
      ),
    );
  }
}
