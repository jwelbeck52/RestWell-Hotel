import 'package:resevation_mgt/models/reservation.dart';

class Reservations {
  final List<Reservation> _reservations = [];

  // reservations get {
  //   return _reservations.map(reservation)
  // }

  addReservation(reservation) {
    _reservations.add(reservation);
  }
}
