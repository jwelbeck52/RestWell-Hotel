import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        "Make Payment",
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
                'Enter your Payment Card Details',
                style: TextStyle(fontSize: 23),
              ),
              Column(
                children: [
                  // SizedBox(
                  //   height: 20,
                  // ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                      // labelStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 22,
                      // )
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name on Card',
                      // labelStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 22,
                      // )
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Expiry Date',
                      // labelStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 22,
                      // )
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'CVC',
                      // labelStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 22,
                      // )
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: Text('Complete Payment'),
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
                child: Text('Go back to Reservation Details'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
