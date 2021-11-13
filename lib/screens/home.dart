import 'package:flutter/material.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        "Bester rest",
      ),
      endDrawer: MainDrawer(context),
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
