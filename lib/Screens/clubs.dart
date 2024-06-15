import 'package:flutter/material.dart';

import 'Club_details.dart';

class ClubsScreen extends StatefulWidget {
  @override
  State<ClubsScreen> createState() => _ClubsScreenState();
}

class _ClubsScreenState extends State<ClubsScreen> {
  final List<String> clubs = ['John', 'Doe', 'Alice', 'Bob']; // Example names
  final List<String> clubsImages = [
    "https://media.architecturaldigest.com/photos/5df949c997b883000883d354/2:1/w_1280%2Cc_limit/SAV_2019Spring_Eichberg_Exterior_AF_005_SN_SOLARPANELS_v1-resized.jpg",
    "https://media.architecturaldigest.com/photos/5df949c997b883000883d354/2:1/w_1280%2Cc_limit/SAV_2019Spring_Eichberg_Exterior_AF_005_SN_SOLARPANELS_v1-resized.jpg",
    "https://media.architecturaldigest.com/photos/5df949c997b883000883d354/2:1/w_1280%2Cc_limit/SAV_2019Spring_Eichberg_Exterior_AF_005_SN_SOLARPANELS_v1-resized.jpg",
    "https://media.architecturaldigest.com/photos/5df949c997b883000883d354/2:1/w_1280%2Cc_limit/SAV_2019Spring_Eichberg_Exterior_AF_005_SN_SOLARPANELS_v1-resized.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Your College",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            ListTile(
               leading: Container(
                 height: 60,
                 width: 120,
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(8),
                   child: Image.network(
                     "https://media.architecturaldigest.com/photos/5df949c997b883000883d354/2:1/w_1280%2Cc_limit/SAV_2019Spring_Eichberg_Exterior_AF_005_SN_SOLARPANELS_v1-resized.jpg",
                     fit: BoxFit.cover,
                   ),
                 ),
               ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Indian Institute of Technology, Kanpur",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                    "Kanpur, Uttar Pradesh",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Your Clubs",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 16,
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: clubs.length,
              itemBuilder: (BuildContext context, int index) {
                return eachClub(clubs[index], clubsImages[index]);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    "Learning",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "X",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    " clubs",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    size: 16,
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: clubs.length,
              itemBuilder: (BuildContext context, int index) {
                return eachClubLearningX(clubs[index], clubsImages[index]);
              },
            ),
          ],
        ),
      ),
    );
  }


  Widget eachClub(String clubName, String clubImage) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ClubDetails()), // Navigate to DetailScreen
          );
        },
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
              Icon(Icons.keyboard_arrow_down_outlined, color: Colors.blue),
              SizedBox(width: 8),
              Container(
                height: 30,
                width: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    clubImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 16),
              Text(
                clubName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }

  Widget eachClubLearningX(String clubName, String clubImage) {
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
              height: 30,
              width: 30,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  clubImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  clubName,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("10 members"),
              ],
            ),
            Spacer(),
            Icon(Icons.chevron_right,color: Colors.blue,),
          ],
        ),
      ),
    );
  }
}
