import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:provider/provider.dart';

// providers
import './providers/reservations.dart';
import './providers/rooms.dart';

//screens
import 'package:resevation_mgt/screens/dashboard.dart';
import 'screens/home.dart';
import 'screens/dashboard.dart';
import 'screens/room_select.dart';
import 'screens/confirm_details.dart';
import 'screens/personal_details.dart';
import 'screens/payment_screen.dart';
import 'screens/reservation_status.dart';

void main() {
  runApp(HotelApp());
}

class HotelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(create: (context) => Reservations()),
        ListenableProvider(create: (context) => Rooms())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RestWell Hotel',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        // Start the app with the "/" named route. In this case, the app starts
        // on the FirstScreen widget.
        initialRoute: '/',
        // home: Dashboard,
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          Dashboard.routeName: (context) => Dashboard(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          RoomSelectionScreen.routeName: (context) => RoomSelectionScreen(),
          // '/personal_details': (context) => PersonalDetailsScreen(),
          // '/confirm_details': (context) => DetailsConfirmationScreen(),
          // '/payment': (context) => PaymentScreen(),
          // '/status': (context) => StatusScreen(),
        },
      ),
    );
  }
}
