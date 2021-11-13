import 'package:flutter/material.dart';

@override
Widget MainDrawer() {
  return Drawer(
    child: ListView(padding: EdgeInsets.zero, children: [
      DrawerHeader(child: Text("Header")),
      ListTile(title: Text("Home"))
    ]),
  );
}
