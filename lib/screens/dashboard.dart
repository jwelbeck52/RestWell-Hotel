// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resevation_mgt/screens/room_select.dart';

import '../providers/rooms.dart';
import '../providers/reservations.dart';

import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import '../models/reservation.dart';
import 'reservations_screen.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = '/';

  var reserve1 = Reservation(
      id: "419",
      roomId: '1',
      fullName: 'fullName12',
      email: 'email11',
      startDate: DateTime.now(),
      endDate: DateTime.now());

  @override
  Widget build(BuildContext context) {
    var myReservations = Provider.of<Reservations>(context);
    var myRooms = Provider.of<Rooms>(context); //Rooms();

    return Scaffold(
      appBar: MainAppBar(
        "RestWell Hotel",
      ),
      endDrawer: MainDrawer(context),
      body: Center(
        child: Container(
          child: Column(
            children: [
              ElevatedButton(
                child: Text('Load Data'),
                onPressed: () {
                  myRooms.loadRoomsFromDB();
                  myReservations.loadReservationsFromDB();
                },
              ),
              ElevatedButton(
                child: Text('Show Rooms'),
                onPressed: () {
                  inspect(myRooms.rooms);
                  Navigator.pushNamed(context, RoomSelectionScreen.routeName);
                },
              ),
              ElevatedButton(
                child: Text('Show Reservations'),
                onPressed: () {
                  inspect(myReservations.reservations);
                  Navigator.pushNamed(context, ReservationsScreen.routeName);
                },
              ),
              ElevatedButton(
                child: Text('Add Reservation'),
                onPressed: () {
                  myReservations.addReservation(reserve1);
                  inspect(myReservations.reservations);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
