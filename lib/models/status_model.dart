import 'package:flutter/material.dart';

class StatusModel {
  final String name;
  final String statusImage;
  final String lastUpdate;
  final Color textColor; // Add a textColor field

  StatusModel({
    required this.name,
    required this.statusImage,
    required this.lastUpdate,
    this.textColor = Colors.black, // Default text color is black
  });
}
