import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailsConfirmationScreen extends StatefulWidget {
  @override
  State<DetailsConfirmationScreen> createState() =>
      _DetailsConfirmationScreenState();
}

class _DetailsConfirmationScreenState extends State<DetailsConfirmationScreen> {
  String fullName = '',
      email = '',
      phone = '',
      noOfSingle = '',
      noOfDouble = '',
      noOfExecutive = '',
      dateRange = '',
      adults = '',
      children = '',
      startDate = '',
      endDate = '';
  Map data = {};

  @override
  void initState() {
    super.initState();
  }

  getData() async {
    fullName = data['fullName'] ?? "empty";
    email = data['email'] ?? "empty";
    phone = data['phone'] ?? "empty";
    noOfSingle = data['single'] ?? "0";
    noOfDouble = data['double'] ?? "0";
    noOfExecutive = data['executive'] ?? "0";
    dateRange = data['dateRange'] as String;
    adults = data['adults'] as String;
    children = data['children'] as String;
    var dateList = dateRange.split('-');
    startDate = dateList[0].trim();
    endDate = dateList[1].trim();

    // single = data['single'];
    // SharedPreferences data = await SharedPreferences.getInstance();
    // setState(() {
    //   fullName = data.getString('fullname') ?? '';
    //   email = data.getString('email') ?? '';
    // });
  }

  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    getData();

    return Scaffold(
      appBar: MainAppBar(
        "Details Confirmation",
      ),
      endDrawer: MainDrawer(context),
      body: SingleChildScrollView(
          child: Center(
              child: Padding(
        padding: EdgeInsets.all(13),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Confirm Reservation Details',
                style: TextStyle(fontSize: 23),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Personal Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Name: '),
                      SizedBox(
                        width: 30,
                      ),
                      Text(fullName,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email: ',
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Text(email,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Phone: '),
                      SizedBox(
                        width: 25,
                      ),
                      Text(phone,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //this is the check in details section

                  Row(
                    children: [
                      Text(
                        'Check in Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text('Check-in date: '),
                      SizedBox(
                        width: 22,
                      ),
                      Text(startDate,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),

                  Row(
                    children: [
                      Text(
                        'Check-out date',
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(endDate,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Number of Days: '),
                      SizedBox(
                        width: 5,
                      ),
                      Text('5', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Number of Adults: '),
                      SizedBox(
                        width: 2,
                      ),
                      Text(adults,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Number of Children: '),
                      SizedBox(
                        width: 5,
                      ),
                      Text(children,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),

                  //this is the room section
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Room Selection Details',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Room Type'),
                      SizedBox(
                        width: 60,
                      ),
                      Text('Price (GHS)'),
                      SizedBox(
                        width: 30,
                      ),
                      Text('No. of Rooms')
                    ],
                  ),
                  Row(children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/single_room.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Text('Single Room'),
                      ],
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text('300.00',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 80,
                    ),
                    Text(noOfSingle)
                  ]),
                  Row(children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/double_room.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Text('Double Room'),
                      ],
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text('600.00',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 80,
                    ),
                    Text(noOfDouble)
                  ]),
                  Row(children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/executive_room.jpg',
                          height: 100,
                          width: 100,
                        ),
                        Text('Executive Room'),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text('1000.00',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 78,
                    ),
                    Text(noOfExecutive)
                  ]),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text('Room Cost:'),
                      SizedBox(
                        width: 45,
                      ),
                      Text('300 x 1 + 600 x 3   =         2100',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      // SizedBox(
                      //   width: 76,
                      // ),
                      // Text('4'),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),

                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text('Total Cost:'),
                      SizedBox(
                        width: 67,
                      ),
                      Text('2100.00 x 5        =      10,500',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text('Confirm & Make Payment'),
                // color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/payment');
                },
              ),
              ElevatedButton(
                // color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back to Personal Details Screen!'),
              ),
            ]),
      ))),
    );
  }
}
