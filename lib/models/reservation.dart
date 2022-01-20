import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../models/room.dart';
import 'package:resevation_mgt/providers/rooms.dart';

class Reservation {
  String id;
  String fullName;
  String email;
  double cost = 100.00;
  //int noOfAdults = 0;
  //int noOfChildren = 0;
  DateTime startDate;
  DateTime endDate;
  String roomId;

  //final Function getRoomId;

  // email = '',
  // phone = '',
  // noOfSingle = '',
  // noOfDouble = '',
  // noOfExecutive = '',
  // adults = '',
  // children = '',
  // startDate = '',
  // endDate = '';

  Reservation({
    required this.id,
    required this.roomId,
    required this.fullName,
    required this.email,
    required this.startDate,
    required this.endDate,
  });
}
