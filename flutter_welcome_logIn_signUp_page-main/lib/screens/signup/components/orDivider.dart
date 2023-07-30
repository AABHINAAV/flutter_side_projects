import 'package:flutter/material.dart';

import '../../../constants.dart';
class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildLien(size),
        Text(
          'OR',
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        buildLien(size),
      ],
    );
  }

  Expanded buildLien(Size size) {
    return Expanded(
      child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.03,
            horizontal: size.width * 0.05,
          ),
        child: Divider(
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
