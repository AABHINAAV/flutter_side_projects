import 'package:doctor_version/screens/login_page/login_page.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: SplashScreen(
        seconds: 4,
        backgroundColor: Colors.white,
        image: Image.asset('assets/splash_screen_logo/logo.png'),
        photoSize: 140,
        loadingText: Text(
          'Ashwani-Abhinav Technologies',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        loaderColor: Colors.white,
        navigateAfterSeconds: LogInPage(),
      ),
    );
  }
}
