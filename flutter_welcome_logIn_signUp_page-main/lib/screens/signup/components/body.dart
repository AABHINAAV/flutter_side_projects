import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:welcome_login_signup_page/screens/login/components/already_have_an_account.dart';
import 'package:welcome_login_signup_page/screens/login/components/roundedInputField.dart';
import 'package:welcome_login_signup_page/screens/login/login.dart';
import 'package:welcome_login_signup_page/screens/signup/components/socialMediaIcon.dart';
import 'package:welcome_login_signup_page/screens/welcome/components/roundedButton.dart';

import 'background.dart';
import 'orDivider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.4,
            ),
            RoundedInputField(
              onChanged: (value) {},
              hintText: 'Your Email',
              icon: Icons.person,
              obsecure: false,
            ),
            RoundedInputField(
              onChanged: (value) {},
              hintText: 'Your Password',
              icon: Icons.lock,
              suffixIcon: Icons.visibility,
              obsecure: true,
            ),
            RoundedButton(
              text: 'Sign Up',
              press: () {},
            ),
            SizedBox(height: size.height * 0.04),
            AlreadyHaveAnAccount(
              login: false,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ));
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaIcons(
                  path: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialMediaIcons(
                  path: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
                SocialMediaIcons(
                  path: 'assets/icons/twitter.svg',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
