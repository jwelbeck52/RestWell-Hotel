import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RestWell Hotel'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Select Rooms'),
          // color: Colors.orangeAccent,
          onPressed: () {
            Navigator.pushNamed(context, '/room_selection');
          },
        ),
      ),
    );
  }
}
