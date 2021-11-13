import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/room_select.dart';
import 'screens/confirm_details.dart';
import 'screens/personal_details.dart';
import 'screens/payment_screen.dart';
import 'screens/reservation_status.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'RestWell Hotel',
    theme: ThemeData(
      // This is the theme of your application.
      primarySwatch: Colors.purple,
    ),
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HomeScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/room_selection': (context) => RoomSelectionScreen(),
      '/personal_details': (context) => PersonalDetailsScreen(),
      '/payment': (context) => PaymentScreen(),
      '/confirm_details': (context) => DetailsConfirmationScreen(),
      '/status': (context) => StatusScreen(),
    },
  ));
}
