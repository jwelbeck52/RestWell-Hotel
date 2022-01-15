import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:resevation_mgt/providers/reservations.dart';

import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';
import '../models/reservation.dart';

class Dashboard extends StatelessWidget {
  static const String routeName = '/';
  Dashboard({Key? key}) : super(key: key);

  var reservations = Reservations();
  var reserve1 = Reservation(
      id: "419",
      roomId: '1',
      fullName: 'fullName12',
      email: 'email11',
      startDate: DateTime.now(),
      endDate: DateTime.now());

  @override
  Widget build(BuildContext context) {
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
                  // reservations.addReservation(reserve1);
                  inspect(reservations.reservations);
                },
              ),
              ElevatedButton(
                child: Text('Add Reservation'),
                onPressed: () {
                  reservations.addReservation(reserve1);
                  inspect(reservations.reservations);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
