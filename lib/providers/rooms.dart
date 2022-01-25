import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:resevation_mgt/models/dummy_data.dart';

import '../models/room.dart';

class Rooms with ChangeNotifier {
  List<Room> _rooms = [
    // Room(
    //     id: '1',
    //     name: 'Room 1',
    //     cost: 100.00,
    //     image: Image.network('https://picsum.photos/200/300'),
    //     description: 'Room 1 description'),
    // Room(
    //     id: '2',
    //     name: 'Room 2',
    //     cost: 200.00,
    //     image: Image.network('https://picsum.photos/200/300'),
    //     description: 'Room 2 description'),
    // Room(
    //     id: '3',
    //     name: 'Room 3',
    //     cost: 300.00,
    //     image: Image.network('https://picsum.photos/200/300'),
    //     description: 'Room 3 description'),
  ];

  loadRoomsFromDB() {
    _rooms = [...dummyRooms];
    notifyListeners();
  }

  List<Room> get rooms {
    return [..._rooms];
  }

  Room getRoomById(String roomId) {
    var myRoom = _rooms.firstWhere((room) => room.id == roomId);
    return myRoom;
  }

  addRoom(Room newRoom) {
    _rooms.add(newRoom);
    notifyListeners();
  }
}
