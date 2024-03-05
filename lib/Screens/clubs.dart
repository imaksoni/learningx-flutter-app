import 'package:flutter/material.dart';


class ClubsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            eachClub(),
            eachClub(),
            eachClub(),
            eachClub(),
            eachClub(),
            eachClub(),
            eachClub(),
            eachClub(),
            eachClub(),
            eachClub(),
          ],
        ),
      ),
    );
  }

  Widget eachClub() {
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
                  height: 60,
                  width: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network('https://randomuser.me/api/portraits/men/47.jpg'),
                  ),
                ),
                SizedBox(width: 16,),
                Column(
                  children: [
                    Text(
                      "Club Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text("10 members"),
                  ],
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
