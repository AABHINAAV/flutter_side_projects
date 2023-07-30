import 'package:flutter/material.dart';

class SelectTimmingsPage extends StatefulWidget {
  @override
  _SelectTimmingsPageState createState() => _SelectTimmingsPageState();
}

class _SelectTimmingsPageState extends State<SelectTimmingsPage> {
  List allTimmings = ['6AM - 8AM', '8AM - 10AM', '2PM - 4PM', '6PM - 8PM'];
  String selectedValue = '';

  @override
  void initState() {
    super.initState();
  }

  void changeSelectedValue(String value) {
    print(value);
    setState(() {
      selectedValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        color: Colors.blue[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            specificDayTimmings(),
            bookNowBtn(),
          ],
        ),
      ),
    );
  }

  MaterialButton bookNowBtn() {
    return MaterialButton(
      height: 50,
      minWidth: 100,
      color: Colors.teal,
      child: Text(
        'Book Now',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              'your appointment has been successfully booked',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.teal,
                padding: EdgeInsets.all(10),
                child: Text(
                  'ok',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Card specificDayTimmings() {
    return Card(
        margin: EdgeInsets.only(bottom: 10),
        child: ListView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: allTimmings.length,
          itemBuilder: (context, index) => RadioListTile(
            value: allTimmings[index],
            groupValue: selectedValue,
            title: Text(
              allTimmings[index],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            onChanged: (value) {
              changeSelectedValue(value);
            },
          ),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Select Date',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.teal,
    );
  }
}
