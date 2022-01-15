import 'package:flutter/material.dart';

class Room {
  final String id;
  final String name;
  final double cost;
  final String description;
  final Image image;

  Room(
      {required this.id,
      required this.name,
      required this.cost,
      required this.image,
      required this.description});
}
