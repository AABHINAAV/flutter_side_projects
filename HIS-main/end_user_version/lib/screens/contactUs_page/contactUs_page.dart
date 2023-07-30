import 'package:flutter/material.dart';

import 'components/details_container.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        width: size.width,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ContactDetailsHolder(
              size: size,
              heading: 'Contact Us At :-',
              data1: '+1234567890',
              data2: '+1234567890',
            ),
            ContactDetailsHolder(
              size: size,
              heading: 'Mail Us At :-',
              data1: 'bhumailid@gmail.com',
              data2: 'bhumailid@gmail.com',
            ),
            ContactDetailsHolder(
              size: size,
              heading: 'Developers Mail ID :-',
              data1: 'abhinavgargchand@gmail.com',
              data2: 'ashwanikumarsingh.varanasi@gmail.com',
            ),
            ContactDetailsHolder(
              size: size,
              heading: 'Developers Contacts Numbers :-',
              data1: '+91 7895051568',
              data2: '+91 9720152368',
            ),
          ],
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
