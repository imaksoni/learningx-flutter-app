import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningx_flutter_app/Screens/ContactUs.dart';
import 'package:learningx_flutter_app/Screens/MyCollege.dart';
import 'package:learningx_flutter_app/Screens/PrivacyPolicy.dart';
import 'package:learningx_flutter_app/Screens/TermsAndConditions.dart';
import 'package:learningx_flutter_app/Screens/UpcomingSession.dart';
import 'package:learningx_flutter_app/Screens/sign_up.dart';

import 'Screens/Home_page.dart';
import 'Screens/clubs.dart';
import 'Screens/events.dart';
import 'Screens/feed.dart';
import 'Screens/messages.dart';
import 'Screens/notifications.dart';
import 'Screens/sign_in.dart';
import 'Screens/Splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

