import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextInputType typeOfField;
  final String nameOfField;
  final bool obscureText;
  const InputField({
    Key key,
    this.typeOfField,
    this.nameOfField, this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      autofocus: false,
      obscureText: obscureText,
      keyboardType: typeOfField,
      style: TextStyle(
        color: Colors.teal,
        fontSize: 25,
      ),
      decoration: InputDecoration(
        labelText: nameOfField,
        labelStyle: TextStyle(
          fontSize: 22,
          color: Colors.teal,
        ),
      ),
    );
  }
}