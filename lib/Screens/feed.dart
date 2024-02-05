import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
        // Add a leading icon to trigger the drawer
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
        actions: [
          // Add a search icon to the AppBar
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add your search functionality here
            },
          ),
          IconButton(
            icon: Icon(Icons.update),
            onPressed: () {
            },
          ),
        ],

      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: Text('My College'),
              onTap: () {
                // Navigate to My College page
                Navigator.pop(context);
                // Implement your navigation logic here
              },
            ),
            ListTile(
              title: Text('Upcoming Sessions'),
              onTap: () {
                // Navigate to Upcoming Sessions page
                Navigator.pop(context);
                // Implement your navigation logic here
              },
            ),
            ListTile(
              title: Text('Contact Us'),
              onTap: () {
                // Navigate to Contact Us page
                Navigator.pop(context);
                // Implement your navigation logic here
              },
            ),
            ListTile(
              title: Text('Terms and Conditions'),
              onTap: () {
                // Navigate to Terms and Conditions page
                Navigator.pop(context);
                // Implement your navigation logic here
              },
            ),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {
                // Navigate to Privacy Policy page
                Navigator.pop(context);
                // Implement your navigation logic here
              },
            ),
            ListTile(
              title: Text('Invite and Share'),
              onTap: () {
                // Navigate to Invite and Share page
                Navigator.pop(context);
                // Implement your navigation logic here
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Implement logout logic
                Navigator.pop(context);
                // Implement your logout logic here
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Feed Screen'),
      ),
    );
  }
}