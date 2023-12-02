import 'package:flutter/material.dart';
import 'SideMenu.dart';
import 'EmployersView.dart';

void main() {
  runApp(const AdminSignIn());
}

class AdminSignIn extends StatefulWidget {
  const AdminSignIn({super.key});

  @override
  State<AdminSignIn> createState() => _AdminSignInState();
}

class _AdminSignInState extends State<AdminSignIn> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                margin: EdgeInsets.all(80.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (screenWidth > 600)
                      Expanded(
                        child: Container(
                          width: 300.0,
                          padding: EdgeInsets.all(100.0),
                          margin: EdgeInsets.all(50.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Sign In",
                                        style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "Enter your email and password to sign in!",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.0),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xfff4f7fe),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: ' Email',
                                    filled: true,
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xfff4f7fe),
                                ),
                                child: TextField(
                                  obscureText:
                                      true, // Set to true for a password input field
                                  decoration: InputDecoration(
                                    hintText: 'Enter your password',
                                  ),
                                ),
                              ),
                              SizedBox(height: 16.0),
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      // Handle checkbox state change
                                    },
                                  ),
                                  Text('Keep me logged in'),
                                  SizedBox(
                                    width: 290,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // Handle forgot password
                                    },
                                    child: Text('Forgot password?'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 50.0),
                              Text(
                                "______________________________________     OR     ______________________________________",
                              ),
                              SizedBox(height: 50.0),
                              Container(
                                width:
                                    screenWidth > 600 ? 600 : double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Color(0xfff4f7fe),
                                ),
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    // Add your Google Sign-In logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xfff4f7fe),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                  icon: Image.asset(
                                    "images/google_logo.png",
                                  ),
                                  label: Text(
                                    'Sign In with Google',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(height: 50.0),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle sign in button
                                },
                                child: Text('Sign In'),
                              ),
                            ],
                          ),
                        ),
                      )
                    else
                      Container(), // If screen is smaller than 600, do not show this container
                    Expanded(
                      child: Image.asset("images/JobHub.png"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
