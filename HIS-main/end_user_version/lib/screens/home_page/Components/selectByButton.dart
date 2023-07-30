import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelectByButton extends StatelessWidget {
  final String txt;
  final Widget nextPageName;

  const SelectByButton({
    Key key,
    this.txt,
    this.nextPageName,
  }) : super(key: key);

  @SemanticsHintOverrides()
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 14,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => nextPageName,
          ),
        );
      },
      height: 40,
      color: Colors.teal,
      child: Text(
        '$txt',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}
