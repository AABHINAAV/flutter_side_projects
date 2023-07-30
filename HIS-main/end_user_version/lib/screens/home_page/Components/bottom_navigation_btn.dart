import 'package:flutter/material.dart';

class BottomNavBtn extends StatelessWidget {
  final String txt;
  final Widget nextPageName;
  const BottomNavBtn({
    Key key,
    @required this.size,
    this.txt,
    this.nextPageName,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.teal,
      padding: EdgeInsets.symmetric(vertical: 10),
      minWidth: size.width * 0.47,
      child: Text(
        txt,
        style: TextStyle(
          color: Colors.white,
          fontSize: 27,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => nextPageName,
          ),
        );
      },
    );
  }
}
