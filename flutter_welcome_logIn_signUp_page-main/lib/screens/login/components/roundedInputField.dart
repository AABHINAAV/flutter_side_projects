import 'package:flutter/material.dart';
import 'package:welcome_login_signup_page/screens/login/components/textFieldContainer.dart';

import '../../../constants.dart';

class RoundedInputField extends StatelessWidget {
  final bool obsecure;
  final String hintText;
  final IconData icon;
  final IconData suffixIcon;
  final Function onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon,
    this.onChanged, this.obsecure, this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: obsecure,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(suffixIcon,color:kPrimaryColor,),
        ),
      ),
    );
  }
}