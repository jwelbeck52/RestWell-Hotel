import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Make Payment"),
        ),
        drawer: Drawer(
          child: Text('My Account'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'This is the Payments Screen',
                style: TextStyle(fontSize: 23),
              ),
              ElevatedButton(
                child: Text('Go to Confirm Reservation Details'),
                // color: Colors.orangeAccent,
                onPressed: () {
                  Navigator.pushNamed(context, '/confirm_details');
                },
              ),
              ElevatedButton(
                // color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back to Personal Details Screen!'),
              ),
            ],
          ),
        ));
  }
}
