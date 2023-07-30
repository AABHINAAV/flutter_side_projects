import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LikeHeart extends StatefulWidget {
  @override
  _LikeHeartState createState() => _LikeHeartState();
}

class _LikeHeartState extends State<LikeHeart> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isLiked = !isLiked;
        });
      },
          child: Container(
        padding: EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: isLiked ? Colors.red : Colors.blue,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          'assets/icons/heart.svg',
        ),
      ),
    );
  }
}
