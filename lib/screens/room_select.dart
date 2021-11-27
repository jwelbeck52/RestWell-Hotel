import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RoomSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // set it to false
      appBar: MainAppBar(
        "Room Selection",
      ),
      endDrawer: MainDrawer(context),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // TextField(
            //   decoration: const InputDecoration(
            //       border: OutlineInputBorder(),
            //       hintText: 'Search for the perfect room'),
            // ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Select Your Room',
              style: TextStyle(fontSize: 23),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(13),
                child: Column(
                  children: [
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
                      Container(
                        width: 50,
                        child: FormBuilderTextField(
                          name: 'noOfSingleRoom',
                          // decoration: InputDecoration(
                          //   labelText: 'Number of Children',
                          //   helperText: 'Enter the number of children',
                          // ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
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
                      Container(
                        width: 50,
                        child: FormBuilderTextField(
                          name: 'noOfDoubleRoom',
                          keyboardType: TextInputType.number,
                        ),
                      ),
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
                        width: 80,
                      ),
                      Container(
                        width: 50,
                        child: FormBuilderTextField(
                          name: 'noOfExecutiveRoom',
                          // decoration: InputDecoration(
                          //   labelText: 'Number of Children',
                          //   helperText: 'Enter the number of children',
                          // ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 25,
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text('Grand Total:'),
                        SizedBox(
                          width: 67,
                        ),
                        Text('2100.00',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 76,
                        ),
                        Text('4'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  // color: Colors.blueGrey,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Go back home!'),
                ),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                  child: Text('Add Personal Details'),
                  // color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.pushNamed(context, '/personal_details');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
      ),
    );
  }
}
