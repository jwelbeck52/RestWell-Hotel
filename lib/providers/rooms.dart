import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../models/room.dart';

class Rooms {
  final List<Room> _rooms = [
    Room(
        id: '1',
        name: 'Room 1',
        cost: 100.00,
        image: Image.network('https://picsum.photos/200/300'),
        description: 'Room 1 description'),
    Room(
        id: '2',
        name: 'Room 2',
        cost: 200.00,
        image: Image.network('https://picsum.photos/200/300'),
        description: 'Room 2 description'),
    Room(
        id: '3',
        name: 'Room 3',
        cost: 300.00,
        image: Image.network('https://picsum.photos/200/300'),
        description: 'Room 3 description'),
  ];

  List<Room> get rooms {
    return [..._rooms];
  }

  Room getRoomById(String roomId) {
    var room = rooms.firstWhere((id) => id == roomId);
    return room;
  }
}
