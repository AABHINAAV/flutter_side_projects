import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue[50],
      height: size.height,
      width: size.width,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.blue[50],
              backgroundImage: AssetImage('assets/profile_images/profile.jpg'),
            ),
            SizedBox(height: 15),
            infoTileContainer(
              title: 'NAME :  ',
              val: 'ABHINAV GARG',
            ),
            infoTileContainer(
              title: 'HOSPITAL NAME :  ',
              val: 'BHU HOSPITAL',
            ),
            infoTileContainer(
              title: 'DOCTOR ID :  ',
              val: '1234JKL',
            ),
            infoTileContainer(
              title: 'SPECIALIST TYPE :  ',
              val: 'NEUROSURGEON',
            ),
            infoTileContainer(
              title: 'PHONE NUMBER : ',
              val: '+91 1234567890',
            ),
            infoTileContainer(
              title: 'EMAIL : ',
              val: 'abhinavgargchand@gmail.com',
            ),
          ],
        ),
      ),
    );
  }

  Container infoTileContainer({title, val}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.teal[400],
      ),
      child: ListTile(
        leading: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        trailing: Text(
          val,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
