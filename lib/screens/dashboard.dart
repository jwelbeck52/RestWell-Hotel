// ignore_for_file: import_of_legacy_library_into_null_safe

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/rooms.dart';
import '../providers/reservations.dart';

import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import '../models/reservation.dart';

class Dashboard extends StatefulWidget {
  static const String routeName = '/';
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                child: Text('Show Reservations'),
                onPressed: () {
                  myReservations.loadReservationsFromDB();
                  inspect(myReservations.reservations);
                },
              ),
              ElevatedButton(
                child: Text('Show Rooms'),
                onPressed: () {
                  myRooms.loadRoomsFromDB();
                  inspect(myRooms.rooms);
                },
              ),
              //  ElevatedButton(
              //   child: Text('Add Room'),
              //   onPressed: () {
              //     myreservations.loadReservationsFromDB();
              //     inspect(myreservations.reservations);
              //   },
              // ),
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
