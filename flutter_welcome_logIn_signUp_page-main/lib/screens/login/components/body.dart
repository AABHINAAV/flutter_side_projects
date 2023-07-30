import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_page/screens/login/components/background.dart';
import 'package:welcome_login_signup_page/screens/login/components/roundedInputField.dart';
import 'package:welcome_login_signup_page/screens/signup/signup_screen.dart';
import 'package:welcome_login_signup_page/screens/welcome/components/roundedButton.dart';

import 'already_have_an_account.dart';

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
              'LogIn',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              onChanged: (value) {},
              icon: Icons.person,
              hintText: 'Your Email',
              obsecure: false,
            ),
            RoundedInputField(
              onChanged: (value) {},
              icon: Icons.lock,
              hintText: 'Your Password',
              obsecure: true,
              suffixIcon: Icons.visibility,
            ),
            RoundedButton(
              text: 'Log In',
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccount(
              press: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}


