import 'package:flutter/material.dart';

class SoundItem {
  final String soundTitle;
  final IconData icon;
  final bool isLocked;
  double volume;

  SoundItem({
    required this.soundTitle,
    required this.icon,
    this.isLocked = false,
    this.volume = 0.5
  });
}