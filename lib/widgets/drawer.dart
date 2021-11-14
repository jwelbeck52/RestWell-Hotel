import 'package:flutter/material.dart';

@override
Widget MainDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.purple,
          ),
          child: Text('RestWell Hotel', style: TextStyle(color: Colors.white)),
        ),
        ListTile(
          title: const Text('Select Rooms'),
          onTap: () {
            // Update the state of the app.
            // ...

            // Navigator.pop(context);
            Navigator.restorablePopAndPushNamed(context, '/room_selection');
          },
        ),
        ListTile(
          title: const Text('Go Back'),
          onTap: () {
            // Update the state of the app.
            // ...
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
