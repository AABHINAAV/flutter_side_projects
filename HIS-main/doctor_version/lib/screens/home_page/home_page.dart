import 'package:doctor_version/screens/home_page/body_screens/change_timmings.dart';
import 'package:doctor_version/screens/home_page/body_screens/holidays.dart';
import 'package:doctor_version/screens/home_page/body_screens/todays_timmings.dart';
import 'package:doctor_version/screens/home_page/body_screens/user_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget bodyScreen = TodaysTimmings();
  var tileNmbr = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: bodyScreen,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 0),
          children: [
            buildUserAccountsDrawerHeader(),
            drawerTile(
              tileIndex: 1,
              tileName: 'Today Timmings',
              icon: Icons.access_time,
              bodyWidget: TodaysTimmings(),
            ),
            SizedBox(height: 10),
            drawerTile(
              tileIndex: 2,
              tileName: 'Holidays',
              icon: Icons.home_outlined,
              bodyWidget: Holidays(),
            ),
            SizedBox(height: 10),
            drawerTile(
              tileIndex: 3,
              tileName: 'Change Timmings',
              icon: Icons.edit_outlined,
              bodyWidget: ChangeTimmings(),
            ),
            SizedBox(height: 10),
            drawerTile(
              tileIndex: 4,
              tileName: 'User Details',
              icon: Icons.info_outline,
              bodyWidget: UserDetails(),
            ),
            SizedBox(height: 10),
            logOutTile(),
          ],
        ),
      ),
    );
  }

  UserAccountsDrawerHeader buildUserAccountsDrawerHeader() {
    return UserAccountsDrawerHeader(
      accountName: Text(
        'abhinav garg',
        style: TextStyle(fontSize: 20, letterSpacing: 0.5),
      ),
      accountEmail: Text(
        'abhinav@gmail.com',
        style: TextStyle(fontSize: 16, letterSpacing: 0.4),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/profile_images/profile.jpg'),
      ),
      decoration: BoxDecoration(color: Colors.teal),
    );
  }

  ListTile drawerTile({
    int tileIndex,
    String tileName,
    IconData icon,
    Widget bodyWidget,
  }) {
    return ListTile(
      tileColor: tileNmbr == tileIndex ? Colors.teal[400] : Colors.blue[100],
      leading: Text(
        tileName,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        icon,
        color: Colors.black,
        size: 28,
      ),
      onTap: () {
        setState(() {
          tileNmbr = tileIndex;
          bodyScreen = bodyWidget;
        });
      },
    );
  }

  ListTile logOutTile() {
    return ListTile(
      tileColor: Colors.blue[100],
      leading: Text(
        'Sign Out',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.exit_to_app_outlined,
        color: Colors.black,
        size: 28,
      ),
      onTap: () {},
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
