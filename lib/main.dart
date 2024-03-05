import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learningx_flutter_app/Screens/ContactUs.dart';
import 'package:learningx_flutter_app/Screens/MyCollege.dart';
import 'package:learningx_flutter_app/Screens/PrivacyPolicy.dart';
import 'package:learningx_flutter_app/Screens/TermsAndConditions.dart';
import 'package:learningx_flutter_app/Screens/UpcomingSession.dart';

import 'Screens/clubs.dart';
import 'Screens/events.dart';
import 'Screens/feed.dart';
import 'Screens/messages.dart';
import 'Screens/notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Navigation Bar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    FeedScreen(),
    EventsScreen(),
    ClubsScreen(),
    NotificationScreen(),
    MessagesScreen(),
  ];

  List<String> _appBarTitles = [
    'Feed',
    'Events',
    'Clubs',
    'Notifications',
    'Messages',
  ];

  List<List<Widget>> _appBarActions = [
    // Feed screen actions
    [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Add your search functionality here
        },
      ),
      IconButton(
        icon: Icon(Icons.star),
        onPressed: () {
        },
      ),
    ],
    [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Add your search functionality here
        },
      ),
      IconButton(
        icon: Icon(Icons.star),
        onPressed: () {
        },
      ),
    ], // Events screen actions
    [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Add your search functionality here
        },
      ),
      IconButton(
        icon: Icon(Icons.group_add),
        onPressed: () {
        },
      ),
    ], // Clubs screen actions
    [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Add your search functionality here
        },
      ),
      IconButton(
        icon: Icon(Icons.star),
        onPressed: () {
        },
      ),
    ], // Notification screen actions
    [
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Add your search functionality here
        },
      ),
      IconButton(
        icon: Icon(Icons.message),
        onPressed: () {
        },
      ),
    ], // Messages screen actions
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_appBarTitles[_currentIndex]),
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20, // Adjust the radius as needed
                backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/47.jpg",
                ),
              ),
            ),
          ),
        ),

        actions: _appBarActions[_currentIndex],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Events',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Clubs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Container(
            //   alignment: Alignment.center,
            //   child: UserAccountsDrawerHeader(
            //     accountName: Text("AppMaking.co"),
            //     accountEmail: Text("sundar@appmaking.co"),
            //     currentAccountPicture: CircleAvatar(
            //       backgroundImage: NetworkImage(
            //         "https://randomuser.me/api/portraits/men/47.jpg",
            //       ),
            //     ),
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: NetworkImage(
            //           "https://blog.iamsuleiman.com/wp-content/uploads/2017/03/android-o-developer-preview-header.png",
            //         ),
            //         fit: BoxFit.fitHeight,
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              height: MediaQuery.of(context).size.height/3.8,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height/3.8,

                    child: Image.network(
                      "https://blog.iamsuleiman.com/wp-content/uploads/2017/03/android-o-developer-preview-header.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Center(
                    child: DrawerHeader(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 29,
                            backgroundImage: NetworkImage(
                              "https://randomuser.me/api/portraits/men/47.jpg",
                            ),
                          ),
                          SizedBox(height: 36,),
                          Text("User Name"),
                        ],
                      ),),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.building_2_fill), // Icon added here
              title: Text('My College'),
              onTap: () {
                // Navigate to My College page
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyCollege()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.schedule), // Icon added here
              title: Text('Upcoming Sessions'),
              onTap: () {
                // Navigate to Upcoming Sessions page
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpcomingSession()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone), // Icon added here
              title: Text('Contact Us'),
              onTap: () {
                // Navigate to Contact Us page
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.description), // Icon added here
              title: Text('Terms and Conditions'),
              onTap: () {
                // Navigate to Terms and Conditions page
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TermsAndConditions()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip), // Icon added here
              title: Text('Privacy Policy'),
              onTap: () {
                // Navigate to Privacy Policy page
                MaterialPageRoute(builder: (context) => PrivacyPolicy());

              },
            ),
            ListTile(
              leading: Icon(Icons.share), // Icon added here
              title: Text('Invite and Share'),
              onTap: () {
                // Navigate to Invite and Share page
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout), // Icon added here
              title: Text('Logout'),
              onTap: () {
                // Implement logout logic
                Navigator.pop(context);
              },
            ),
          ],
        ),

      ),
    );
  }
}


