import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

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
                  FormBuilderTextField(
                    name: 'cardNumber',
                    decoration: InputDecoration(
                      labelText: 'Card Number',
                      helperText: 'XXXX XXXX XXXX XXXX',
                      // labelStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 22,
                      // )
                    ),
                  ),
                  FormBuilderTextField(
                    name: 'fullNameOnCard',
                    decoration: InputDecoration(
                      labelText: 'Full Name on Card',
                      helperText: 'Enter the name that appears on the card',

                      // labelStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 22,
                      // )
                    ),
                  ),
                  FormBuilderTextField(
                    name: 'cardExpiry',
                    decoration: InputDecoration(
                      labelText: 'Card Expiry Date',
                      helperText: 'MM / YY',
                      // labelStyle: TextStyle(
                      //   color: Colors.black,
                      //   fontSize: 22,
                      // )
                    ),
                  ),
                  FormBuilderTextField(
                    name: 'cardCVC',
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      labelText: 'CVC',
                      helperText: 'Enter the code at the back of the card',
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
