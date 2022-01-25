import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resevation_mgt/providers/reservations.dart';
import 'package:resevation_mgt/providers/rooms.dart';
import 'package:resevation_mgt/widgets/appbar.dart';
import 'package:resevation_mgt/widgets/drawer.dart';

class ReservationsScreen extends StatelessWidget {
  static const routeName = '/reservations_screen';
  const ReservationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var reservationsData = Provider.of<Reservations>(context);
    var myReservations = reservationsData.reservations;
    var myRooms = Provider.of<Rooms>(context);
    return SafeArea(
      child: Scaffold(
        appBar: MainAppBar("My Reservations"),
        body: ListView.builder(
            itemCount: myReservations.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(myReservations[index].id +
                      ' - ' +
                      myReservations[index].fullName),
                  subtitle: Text(
                      myRooms.getRoomById(myReservations[index].roomId).name +
                          ' - GHc ' +
                          myRooms
                              .getRoomById(myReservations[index].roomId)
                              .cost
                              .toString()));
            }),
      ),
    );
  }
}
