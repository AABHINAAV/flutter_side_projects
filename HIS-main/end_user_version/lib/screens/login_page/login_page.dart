import 'package:flutter/material.dart';

import 'components/log_in_form.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: LogInForm(),
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
