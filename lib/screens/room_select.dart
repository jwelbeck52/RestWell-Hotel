import 'package:flutter/material.dart';

class RoomSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Room Selection"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
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
          ),
        ));
  }
}
