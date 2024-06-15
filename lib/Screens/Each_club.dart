import 'package:flutter/material.dart';

class eachClub extends StatelessWidget {
  final String clubName;
  final String clubImage;
  eachClub({required this.clubName, required this.clubImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFBEBEBE),
              offset: Offset(10, 10),
              blurRadius: 20,
              spreadRadius: 1,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-10, -10),
              blurRadius: 20,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://randomuser.me/api/portraits/men/47.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Club Name",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text("10 members"),
              ],
            ),
            Spacer(),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );

  }
}
