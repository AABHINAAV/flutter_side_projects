import 'package:flutter/material.dart';

import '../../../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, bgColor;
  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.bgColor = kPrimaryColor,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          color: bgColor,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
