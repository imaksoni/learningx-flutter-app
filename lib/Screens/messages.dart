import 'package:flutter/material.dart';


class MessagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),
            eachMessage(),          ],
        ),
      ),
    );
  }

  Widget eachMessage () {
    return Padding(
      padding: const EdgeInsets.all(4),
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
                SizedBox(width: 8,),
                Text(
                  "User Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Icon(Icons.chevron_right)

          ],
        ),
      ),
    );
  }
}