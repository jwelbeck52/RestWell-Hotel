import 'package:flutter/material.dart';

import './reservation.dart';
import './room.dart';

List<Reservation> dummyReservations = [
  Reservation(
      id: '1',
      roomId: '1',
      fullName: 'John Snow',
      email: 'jsnow@mail.com',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 2))),
  Reservation(
      id: '2',
      roomId: '3',
      fullName: 'Captain Kidd',
      email: 'capK@mail.com',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 2))),
  Reservation(
      id: '3',
      roomId: '2',
      fullName: 'Jason Borne',
      email: 'jborne@mail.com',
      startDate: DateTime.now(),
      endDate: DateTime.now().add(const Duration(days: 2)))
];

List<Room> dummyRooms = [
  Room(
      id: '1',
      name: 'Executive Room',
      cost: 1000.00,
      image: Image.network('https://picsum.photos/200/300'),
      description: 'Executive Rooms'),
  Room(
      id: '2',
      name: 'Double Room',
      cost: 800.00,
      image: Image.network('https://picsum.photos/200/300'),
      description: 'Executive Rooms'),
  Room(
      id: '3',
      name: 'Single Room',
      cost: 450.00,
      image: Image.network('https://picsum.photos/200/300'),
      description: 'Executive Rooms'),
];
