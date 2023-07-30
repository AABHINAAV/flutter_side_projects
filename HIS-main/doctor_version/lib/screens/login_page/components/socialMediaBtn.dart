import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaBtn extends StatelessWidget {
  final String path;

  const SocialMediaBtn({
    Key key,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(right: 20),
        height: 70,
        width: 70,
        child: SvgPicture.asset(path),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[600],
              offset: Offset(4, 4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4, -4),
              blurRadius: 15,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}