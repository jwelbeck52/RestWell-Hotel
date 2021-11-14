import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';

class PersonalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MainAppBar(
          "Personal Details",
        ),
        endDrawer: MainDrawer(context),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter Your Personal Details',
                  style: TextStyle(fontSize: 23),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    // labelStyle: TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 22,
                    // )
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    // labelStyle: TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 22,
                    // )
                  ),
                ),
                TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    // labelStyle: TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 22,
                    // )
                  ),
                ),
                TextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    // labelStyle: TextStyle(
                    //   color: Colors.black,
                    //   fontSize: 22,
                    // )
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  child: Text('Confirm'),
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
                  child: Text('Go back to Room Selection!'),
                ),
              ],
            ),
          ),
        ));
  }
}
