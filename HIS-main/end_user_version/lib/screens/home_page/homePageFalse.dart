import 'package:endUser_version/screens/contactUs_page/contactUs_page.dart';
import 'package:endUser_version/screens/my_bookings_page/my_bookings_page.dart';
import 'package:endUser_version/screens/select_category_page/select_category_page.dart';
import 'package:endUser_version/screens/select_doctor_page/select_doctor_page.dart';
import 'package:flutter/material.dart';

import 'Components/bottom_navigation_btn.dart';
import 'Components/selectByButton.dart';

class HomePageFalse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final bool loggedIn = true;
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: mainButtonsOnBody(),
      bottomNavigationBar: loggedIn
          ? Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BottomNavBtn(
                    size: size,
                    txt: 'Contact Us',
                    nextPageName: ContactUsPage(),
                  ),
                  BottomNavBtn(
                    size: size,
                    txt: 'My Bookings',
                    nextPageName: MyBookingsPage(),
                  ),
                ],
              ),
            )
          : null,
    );
  }

  Container mainButtonsOnBody() {
    return Container(
      color: Colors.blue[50],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectByButton(
              txt: 'Book By Category',
              nextPageName: SelectCategoryPage(),
            ),
            SizedBox(height: 20),
            SelectByButton(
              txt: 'Book By Doctor',
              nextPageName: SelectDoctorPage(),
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
