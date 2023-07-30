import 'package:flutter/material.dart';

class Holidays extends StatefulWidget {
  @override
  _HolidaysState createState() => _HolidaysState();
}

class _HolidaysState extends State<Holidays> {
  var holidays = ['12 JAN 2020', '18 JAN 2020'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      color: Colors.blue[50],
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ListView.builder(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: holidays.length,
          itemBuilder: (context, index) => Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.teal[400],
            ),
            child: Text(
              holidays[index],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
