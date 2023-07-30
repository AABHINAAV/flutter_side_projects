import 'package:flutter/material.dart';

import '../../../constants.dart';

class ColorDot extends StatelessWidget {
  final Color specificColor;
  final bool isSelected;
  const ColorDot({this.specificColor, Key key, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 2,
        right: kDefaultPaddin / 2,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? specificColor : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: specificColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
