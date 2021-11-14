import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';

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
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search for the perfect room'),
            ),
            Image.asset(
              'assets/images/single_room.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset(
              'assets/images/double_room.jpg',
              height: 200,
              width: 200,
            ),
            Image.asset(
              'assets/images/executive_room.jpg',
              height: 200,
              width: 200,
            ),
            Text(
              'This is the Room Selection Screen',
              style: TextStyle(fontSize: 23),
            ),
            ElevatedButton(
              child: Text('Go to Personal Details'),
              // color: Colors.orangeAccent,
              onPressed: () {
                Navigator.pushNamed(context, '/personal_details');
              },
            ),
            ElevatedButton(
              // color: Colors.blueGrey,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go back home!'),
            ),
          ],
        )),
      ),
    );
  }
}
