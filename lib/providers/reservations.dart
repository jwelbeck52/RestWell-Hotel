import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:resevation_mgt/models/reservation.dart';
import 'package:resevation_mgt/models/room.dart';
import 'package:resevation_mgt/providers/rooms.dart';
import '../models/dummy_data.dart';

class Reservations with ChangeNotifier {
  List<Reservation> _reservations = [
    // Reservation(
    //     id: '1',
    //     roomId: '3',
    //     fullName: 'fullName',
    //     email: 'email',
    //     startDate: DateTime.now(),
    //     endDate: DateTime.now())
  ];

  List<Reservation> get reservations {
    return [..._reservations];
  }

  addReservation(Reservation newReservation) {
    // if (_reservations.contains(reservation)) {
    //   print('already exists');
    // } else {
    //   _reservations.add(reservation);
    // }
    _reservations.add(newReservation);
    notifyListeners();
  }

  loadReservationsFromDB() {
    _reservations = [...dummyReservations];
    notifyListeners();
  }
}
