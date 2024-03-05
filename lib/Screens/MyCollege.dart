import 'package:flutter/material.dart';

class MyCollege extends StatefulWidget {
  const MyCollege({super.key});

  @override
  State<MyCollege> createState() => _MyCollegeState();
}

class _MyCollegeState extends State<MyCollege> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('My College'),
      ),
    );
  }
}
