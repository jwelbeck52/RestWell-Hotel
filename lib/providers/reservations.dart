import 'dart:developer';

import 'package:resevation_mgt/models/reservation.dart';
import 'package:resevation_mgt/models/room.dart';
import 'package:resevation_mgt/providers/rooms.dart';

class Reservations {
  final List<Reservation> _reservations = [
    Reservation(
        id: '1',
        roomId: '3',
        fullName: 'fullName',
        email: 'email',
        startDate: DateTime.now(),
        endDate: DateTime.now())
  ];

  List<Reservation> get reservations {
    return [..._reservations];
  }

  addReservation(Reservation reservation) {
    // if (_reservations.contains(reservation)) {
    //   print('already exists');
    // } else {
    //   _reservations.add(reservation);
    // }
    _reservations.add(reservation);
  }
}
