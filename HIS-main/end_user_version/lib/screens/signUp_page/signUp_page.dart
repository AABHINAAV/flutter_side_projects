import 'package:endUser_version/screens/home_page/homePageFalse.dart';
import 'package:endUser_version/screens/login_page/components/inputField.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        color: Colors.blue[50],
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                    bottom: 30,
                    right: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      InputField(
                        nameOfField: 'Enter First Name',
                        obscureText: false,
                        typeOfField: TextInputType.text,
                      ),
                      SizedBox(height: 30),
                      InputField(
                        nameOfField: 'Enter Last Name',
                        obscureText: false,
                        typeOfField: TextInputType.text,
                      ),
                      SizedBox(height: 30),
                      InputField(
                        nameOfField: 'Enter Phone Number',
                        obscureText: false,
                        typeOfField: TextInputType.phone,
                      ),
                      SizedBox(height: 30),
                      InputField(
                        nameOfField: 'Enter Age',
                        obscureText: false,
                        typeOfField: TextInputType.number,
                      ),
                      SizedBox(height: 30),
                      InputField(
                        nameOfField: 'Enter Email',
                        obscureText: false,
                        typeOfField: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 30),
                      InputField(
                        nameOfField: 'Enter Password',
                        obscureText: true,
                        typeOfField: TextInputType.text,
                      ),
                      SizedBox(height: 30),
                      InputField(
                        nameOfField: 'Re-Enter Password',
                        obscureText: true,
                        typeOfField: TextInputType.text,
                      ),
                    ],
                  ),
                ),
                createBtn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  MaterialButton createBtn(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePageFalse(),
            ));
      },
      height: 30,
      color: Colors.teal,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Create Account',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 25,
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'BHU Hospital',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.teal,
    );
  }
}
