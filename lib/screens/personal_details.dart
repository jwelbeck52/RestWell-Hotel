import 'package:flutter/material.dart';

class PersonalDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Details"),
        ),
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
