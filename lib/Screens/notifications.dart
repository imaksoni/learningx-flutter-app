import 'package:flutter/material.dart';


class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            eachNotification(),
            eachNotification(),
            eachNotification(),
            eachNotification(),
            eachNotification(),
            eachNotification(),
            eachNotification(),
            eachNotification(),
          ],
        ),
      ),
    );
  }

  Widget eachNotification () {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xFFBEBEBE),
                offset: Offset(10, 10),
                blurRadius: 20,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-10, -10),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network('https://randomuser.me/api/portraits/men/47.jpg'),
                  ),
                ),
                SizedBox(width: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User has joined the club",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text("01/01/2024"),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}