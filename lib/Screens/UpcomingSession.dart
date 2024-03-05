import 'package:flutter/material.dart';

class UpcomingSession extends StatefulWidget {
  const UpcomingSession({super.key});

  @override
  State<UpcomingSession> createState() => _UpcomingSessionState();
}

class _UpcomingSessionState extends State<UpcomingSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Upcoming Session'),
      ),
    );;
  }
}
