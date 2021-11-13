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
        endDrawer: MainDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'This is the Personal Details Screen',
                style: TextStyle(fontSize: 23),
              ),
              ElevatedButton(
                child: Text('Go to Payments'),
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
                child: Text('Go back to Room Selection!'),
              ),
            ],
          ),
        ));
  }
}
