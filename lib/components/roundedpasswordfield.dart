import 'package:flutter/material.dart';
import 'package:login/components/textfieldcontainer.dart';
import 'package:login/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;

  const RoundedPasswordField({
    Key key,
    this.hintText,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
