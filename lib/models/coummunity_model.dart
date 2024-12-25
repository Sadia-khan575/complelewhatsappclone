import 'package:flutter/material.dart';

class CommunityModel {
  final String name;
  final String icon;
  final String lastMessage;
  final Color textColor; // Added a textColor field

  CommunityModel({
    required this.name,
    required this.icon,
    required this.lastMessage,
    this.textColor = Colors.black, // Default text color is black
  });
}
