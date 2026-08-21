import 'package:flutter/material.dart';

class Deity {
  final String id;
  final String name;
  final String sanskritName;
  final String description;
  final String icon; // emoji for simplicity
  final Color color;
  final List<String> mantraIds;
  final String aarti;

  const Deity({
    required this.id,
    required this.name,
    required this.sanskritName,
    required this.description,
    required this.icon,
    required this.color,
    required this.mantraIds,
    this.aarti = '',
  });
}
