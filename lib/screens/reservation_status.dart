import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          "Reservation Status",
        ),
        endDrawer: MainDrawer(context),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Reservation Status',
                style: TextStyle(fontSize: 23),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text('Payment Successful!'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Here is your Reservation ID: '),
                  SizedBox(
                    height: 20,
                  ),
                  Text('RW-9082516-23H', style: TextStyle(fontSize: 21)),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Present this ID when checking in at the Hotel'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Thank you!'),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              ElevatedButton(
                // color: Colors.blueGrey,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back to Confirm Details!'),
              ),
            ],
          ),
        )));
  }
}
