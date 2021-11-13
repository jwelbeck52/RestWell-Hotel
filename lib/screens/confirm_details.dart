import 'package:flutter/material.dart';

class DetailsConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Confirm Reservation Details"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'This is the Reservation Confirmation Screen',
                style: TextStyle(fontSize: 23),
              ),
              ElevatedButton(
                child: Text('Reserve My Rooms'),
                // color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/status');
                },
              ),
              ElevatedButton(
                // color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back to Payment Screen!'),
              ),
            ],
          ),
        ));
  }
}
