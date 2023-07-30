import 'package:flutter/material.dart';
import 'package:welcome_login_signup_page/constants.dart';
import 'package:welcome_login_signup_page/screens/login/login.dart';
import 'package:welcome_login_signup_page/screens/signup/signup_screen.dart';
import 'package:welcome_login_signup_page/screens/welcome/components/roundedButton.dart';
import 'background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome Page',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.55,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInScreen()));
              },
              text: 'Log In',
            ),
            RoundedButton(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              text: 'Sign Up',
              color: Colors.black,
              bgColor: kPrimaryLightColor,
            ),
          ],
        ),
      ),
    );
  }
}
