import 'package:flutter/material.dart';

class ContactDetailsHolder extends StatelessWidget {
  final String heading, data1, data2;
  final Size size;
  const ContactDetailsHolder({
    Key key,
    this.heading,
    this.data1,
    this.data2,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue[100],
      ),
      child: Column(
        children: [
          Text(
            heading,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 24,
              color: Colors.teal,
            ),
          ),
          SizedBox(
            height: 12,
            child: Container(
              color: Colors.black,
              margin: EdgeInsets.only(bottom: 10),
            ),
          ),
          Text(
            data1,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            data2,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
