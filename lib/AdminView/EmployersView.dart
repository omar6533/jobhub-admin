import 'package:flutter/material.dart';
import 'SideMenu.dart';

void main() {
  runApp(EmployerView());
}

class EmployerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(244, 247, 254, 100),
        body: Center(
          child: Row(
            children: [
              SideMenuState(),
              Container(
                margin: EdgeInsets.only(left: 25.0, top: 50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 290.0),
                      child: Text(
                        'Employers',
                        style: TextStyle(
                          color: Color.fromARGB(255, 38, 148, 156),
                          fontSize: 34,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 120.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              // Add button pressed
                              // Implement your add logic here
                            },
                            child: Text('Add'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 36, 179, 167),
                              minimumSize: Size(150, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Delete button pressed
                              // Implement your delete logic here
                            },
                            child: Text('Remove'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              minimumSize: Size(150, 45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    8.0), // Rounded corners
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 237, 246, 250),
                        // border: Border.all(
                        //     color: Color.fromARGB(
                        //         255, 148, 219, 210)), // Border color
                        borderRadius:
                            BorderRadius.circular(8.0), // Rounded corners
                      ),
                      child: DataTable(
                        columns: [
                          DataColumn(label: Text('Name')),
                          DataColumn(label: Text('Email')),
                          DataColumn(label: Text('Password')),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Text('John Doe')),
                            DataCell(Text('john.doe@example.com')),
                            DataCell(Text('password123')),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
