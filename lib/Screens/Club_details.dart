import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClubDetails extends StatefulWidget {
  const ClubDetails({super.key});

  @override
  State<ClubDetails> createState() => _ClubDetailsState();
}

class _ClubDetailsState extends State<ClubDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.music_note),
                  text: "Chats",
                ),
                Tab(
                  icon: Icon(Icons.file_present_rounded),
                  text: "Files",
                ),
                Tab(
                  icon: Icon(Icons.event),
                  text: "Session",
                ),
              ],
            ), // TabBar
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                        child: Icon(CupertinoIcons.back,color: Colors.white,)
                    ),
                    CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('General'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.people_alt_outlined),
                    ),
                    InkWell(
                      onTap: () {
                        _options(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.more_horiz_rounded),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            backgroundColor: Colors.blue,
          ), // AppBar
          body: const TabBarView(
            children: [
              Icon(Icons.chat),
              Icon(Icons.file_copy_sharp),
              Icon(Icons.event),
            ],
          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }

  void _options(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.info_outline_rounded),
                title: Text('Club Info'),
                onTap: () {
                  // Handle club info action
                  print('Club Info');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text('Edit Club'),
                onTap: () {
                  // Handle edit club action
                  print('Edit Club');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Manage Members'),
                onTap: () {
                  // Handle manage members action
                  print('Manage Members');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Leave Channel'),
                onTap: () {
                  // Handle leave channel action
                  print('Leave Channel');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text('Delete Channel'),
                onTap: () {
                  // Handle delete channel action
                  print('Delete Channel');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
