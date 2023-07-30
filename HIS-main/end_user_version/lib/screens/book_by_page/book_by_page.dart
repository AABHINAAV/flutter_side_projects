import 'package:endUser_version/screens/contactUs_page/contactUs_page.dart';
import 'package:endUser_version/screens/my_bookings_page/my_bookings_page.dart';
import 'package:endUser_version/screens/select_category_page/select_category_page.dart';
import 'package:endUser_version/screens/select_doctor_page/select_doctor_page.dart';
import 'package:flutter/material.dart';

class BookByPage extends StatefulWidget {
  @override
  _BookByPageState createState() => _BookByPageState();
}

class _BookByPageState extends State<BookByPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: mainButtonsOnBody(),
      bottomNavigationBar: buildTheNavBarAuthentic(context),
    );
  }

  Container buildTheNavBarAuthentic(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.blue[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyBookingsPage(),
                  ));
            },
            height: 50,
            minWidth: MediaQuery.of(context).size.width * 0.49,
            color: Colors.teal,
            child: Text(
              'My Bookings',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()));
            },
            height: 50,
            minWidth: MediaQuery.of(context).size.width * 0.49,
            color: Colors.teal,
            child: Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container mainButtonsOnBody() {
    return Container(
      color: Colors.blue[50],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectCategoryPage()),
                );
              },
              height: 40,
              color: Colors.teal,
              child: Text(
                'Book By Category',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectDoctorPage(),
                  ),
                );
              },
              height: 40,
              color: Colors.teal,
              child: Text(
                'Book By Doctor',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
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
