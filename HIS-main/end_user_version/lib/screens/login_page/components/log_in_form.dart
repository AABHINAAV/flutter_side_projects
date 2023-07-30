import 'package:endUser_version/screens/signUp_page/signUp_page.dart';
import 'package:flutter/material.dart';

import 'inputField.dart';
import 'socialMediaBtn.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({
    Key key,
  }) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue[50],
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              socialLinks(),
              SizedBox(height: 30),
              distributorLine(),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    InputField(
                      nameOfField: 'Email Address',
                      obscureText: false,
                      typeOfField: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20),
                    InputField(
                      nameOfField: 'Password',
                      obscureText: true,
                      typeOfField: TextInputType.text,
                    ),
                    SizedBox(height: 30),
                    logInBtn(),
                  ],
                ),
              ),
              SizedBox(height: 20),
              distributorLine(),
              SizedBox(height: 10),
              orText(),
              SizedBox(height: 10),
              createNewAccBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Container distributorLine() {
    return Container(
      color: Colors.black,
      height: 5,
    );
  }

  Row socialLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialMediaBtn(
          path: 'assets/social_media_logos/google.svg',
        ),
        SocialMediaBtn(
          path: 'assets/social_media_logos/facebook.svg',
        ),
      ],
    );
  }

  MaterialButton createNewAccBtn() {
    return MaterialButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ));
      },
      height: 30,
      color: Colors.teal,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Create New Account',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
      ),
    );
  }

  Text orText() {
    return Text(
      'or',
      style: TextStyle(
        color: Colors.teal,
        fontWeight: FontWeight.w500,
        fontSize: 30,
      ),
    );
  }

  MaterialButton logInBtn() {
    return MaterialButton(
      onPressed: () {},
      height: 30,
      color: Colors.teal,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 4),
      child: Icon(
        Icons.login,
        size: 34,
        color: Colors.white,
      ),
    );
  }
}
