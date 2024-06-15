import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learningx_flutter_app/Screens/sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay before transitioning to the next screen
    Timer(Duration(seconds: 2), () {
      // Navigate to the next screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff3368C6),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/learningx_icon.png"),
            Text('LearningX',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
