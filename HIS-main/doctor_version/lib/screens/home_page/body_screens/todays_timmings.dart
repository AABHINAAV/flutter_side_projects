import 'package:flutter/material.dart';

class TodaysTimmings extends StatefulWidget {
  @override
  _TodaysTimmingsState createState() => _TodaysTimmingsState();
}

class _TodaysTimmingsState extends State<TodaysTimmings> {
  var data = {
    'timmings': [
      '6AM - 8AM',
      '10AM - 12Noon',
      '6AM - 8AM',
      '10AM - 12Noon',
      '6AM - 8AM',
      '10AM - 12Noon',
      '6AM - 8AM',
      '10AM - 12Noon',
      '6AM - 8AM',
      '10AM - 12Noon',
      '6AM - 8AM',
      '10AM - 12Noon',
      '6AM - 8AM',
      '10AM - 12Noon',
      '6AM - 8AM',
      '10AM - 12Noon',
    ],
    'appointments': [
      10,
      20,
      30,
      40,
      10,
      20,
      30,
      40,
      10,
      20,
      30,
      40,
      10,
      20,
      30,
      40
    ]
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      color: Colors.blue[50],
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: data['timmings'].length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.teal[400],
          ),
          child: ListTile(
            leading: Text(
              data['timmings'][index],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            trailing: Text(
              data['appointments'][index].toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
