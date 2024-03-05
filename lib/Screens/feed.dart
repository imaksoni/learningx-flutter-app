import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  bool liked = false;
  int likes = 11;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            eachPost(),
            eachPost(),
            eachPost(),
          ],
        ),
      ),
    );
  }

  Widget eachPost() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xFFBEBEBE),
                offset: Offset(10, 10),
                blurRadius: 30,
                spreadRadius: 1,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-10, -10),
                blurRadius: 30,
                spreadRadius: 1,
              ),
            ]
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/47.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "User Name",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text("College Name")
                    ],
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'description of the post',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width - 10,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(
                      20
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      'https://randomuser.me/api/portraits/men/47.jpg',
                      fit: BoxFit.fill,
                      width: MediaQuery.of(context).size.height / 1.8, // Adjust the width if necessary
                      height: MediaQuery.of(context).size.width - 10, // Adjust the height if necessary
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                            padding: EdgeInsets.fromLTRB(0, 0, 2, 0),
                            constraints: BoxConstraints(),
                            onPressed: () {
                              setState(() {
                                // liked = !liked;
                                // if(liked)
                                // {
                                //   likes += 1;
                                // }
                                // else
                                // {
                                //   likes -= 1;
                                // }
                              });
                            },
                            icon: liked == true
                                ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                                : Icon(Icons.favorite_border)),
                        Padding(
                          child: Row(children: [
                            Text(likes.toString() + " likes"),
                          ]),
                          padding: EdgeInsets.all(5),
                        ),
                      ],
                    ),
                  IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      constraints: BoxConstraints(),
                      onPressed: () {},
                      icon: Icon(Icons.comment_outlined)),
                  IconButton(
                      padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                      constraints: BoxConstraints(),
                      onPressed: () {},
                      icon: Icon(Icons.bookmark_outline)),
                ],
                ),
                padding: EdgeInsets.all(5),
              ),
            ],
          ),
        ),
      ),
    ) ;
  }
}
