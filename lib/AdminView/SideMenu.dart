import 'package:flutter/material.dart';

class SideMenuState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(
            172, 214, 238, 1), // Set your desired background color here
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: Text(
                "JobHub",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(height: 45),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: TextButton.icon(
              onPressed: () {
                // Add your button's functionality here
              },
              icon: Icon(Icons.home),
              label: Text('Dash board',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
          SizedBox(
              height: 16), // Add some spacing between the button and profile
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: TextButton.icon(
              onPressed: () {
                // Add your profile button's functionality here
              },
              icon: Icon(Icons.person),
              label: Text('Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: TextButton.icon(
              onPressed: () {
                // Add your button's functionality here
              },
              icon: Icon(Icons.manage_accounts),
              label: Text('Manage',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
