import 'package:flutter/material.dart';

import 'components/bookingContainer.dart';

class MyBookingsPage extends StatefulWidget {
  @override
  _MyBookingsPageState createState() => _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> {
  var myAllBookings = [
    {
      'Date': '8 DEC 2020',
      'Time': '8AM - 10AM',
      'Doctor Name': 'Munna Bhai MBBS',
      'Specialist Type': 'Cardiologist',
      'specialistImage': 'assets/category_images/cardiologist.svg',
    },
    {
      'Date': '8 DEC 2020',
      'Time': '8AM - 10AM',
      'Doctor Name': 'Munna Bhai MBBS',
      'Specialist Type': 'Cardiologist',
      'specialistImage': 'assets/category_images/cardiologist.svg',
    },
    {
      'Date': '8 DEC 2020',
      'Time': '8AM - 10AM',
      'Doctor Name': 'Munna Bhai MBBS',
      'Specialist Type': 'Cardiologist',
      'specialistImage': 'assets/category_images/cardiologist.svg',
    },
    {
      'Date': '8 DEC 2020',
      'Time': '8AM - 10AM',
      'Doctor Name': 'Munna Bhai MBBS',
      'Specialist Type': 'Cardiologist',
      'specialistImage': 'assets/category_images/cardiologist.svg',
    },
    {
      'Date': '8 DEC 2020',
      'Time': '8AM - 10AM',
      'Doctor Name': 'Munna Bhai MBBS',
      'Specialist Type': 'Cardiologist',
      'specialistImage': 'assets/category_images/radiologist.svg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        height: size.height,
        width: double.infinity,
        color: Colors.blue[50],
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: myAllBookings.length,
            itemBuilder: (context, index) => BookingContainer(
              myAllBookings: myAllBookings,
              size: size,
              index: index,
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'BHU Hospitals',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.teal,
    );
  }
}
