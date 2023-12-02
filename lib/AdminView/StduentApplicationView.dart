import 'package:flutter/material.dart';
import 'SideMenu.dart';

class StudentApplicationView extends StatelessWidget {
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
                      padding: const EdgeInsets.only(right: 690.0),
                      child: Text(
                        'Applications',
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
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 246, 250),
                            border: Border.all(
                                color: Color.fromARGB(
                                    255, 148, 219, 210)), // Border color
                            borderRadius:
                                BorderRadius.circular(8.0), // Rounded corners
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35.0,
                              ),
                              Text(
                                "Top Applicants",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 38, 148, 156),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              DataTable(
                                columns: [
                                  DataColumn(label: Text('Name')),
                                  DataColumn(label: Text('ID')),
                                  DataColumn(label: Text('Major')),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Text('Iqbal Ali')),
                                    DataCell(Text('219110176')),
                                    DataCell(Text('Software Engineering')),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 50.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 237, 246, 250),
                            border: Border.all(
                                color: Color.fromARGB(
                                    255, 148, 219, 210)), // Border color
                            borderRadius:
                                BorderRadius.circular(8.0), // Rounded corners
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35.0,
                              ),
                              Text(
                                "Latest Updates",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 38, 148, 156),
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 10.0),
                              DataTable(
                                columns: [
                                  DataColumn(label: Text('Name')),
                                  DataColumn(label: Text('Status')),
                                  DataColumn(label: Text('Id')),
                                  DataColumn(label: Text('Company')),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Text('Iqbal Ali')),
                                    DataCell(Text('Accepted')),
                                    DataCell(Text('219110176')),
                                    DataCell(Text('STC')),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
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
