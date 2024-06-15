import 'package:flutter/material.dart';
import 'package:learningx_flutter_app/Screens/sign_in.dart';
import 'package:learningx_flutter_app/main.dart';

import 'Home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Change to your desired background color
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle back button tap
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Text(
                    'Sign-Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Image.asset(
                            //   'assets/ic_launcher.png', // Replace with your app logo
                            //   width: 50,
                            //   height: 50,
                            // ),
                            // SizedBox(width: 8),
                            Text(
                              'Learning',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'X',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'First Name*',
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Last Name*',
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email*',
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Mobile Number*', // Change label text accordingly
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Gender*',
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Birthday*',
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password*',
                          ),
                        ),
                        SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Confirm Password*',
                          ),
                        ),
                        SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            // Handle Next button tap
                          },
                          child: Text('Sign Up'),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account? '),
                            GestureDetector(
                              onTap: () {
                                // Handle Sign In text tap
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => SignIn()), // Navigate to DetailScreen
                                );
                              },
                              child: Text(
                                'Sign In',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}