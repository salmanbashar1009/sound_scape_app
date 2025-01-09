

import 'package:flutter/material.dart';
import 'package:sound_scape_app/ui/widgets/sound_tile.dart';

class SoundTileList{
  final List<SoundTile> allSoundTiles = [
    SoundTile(icon: Icons.air, soundTitle: "Decent Wind"),
    SoundTile(icon: Icons.air_outlined, soundTitle: "Medium Wind"),
    SoundTile(icon: Icons.air_rounded, soundTitle: "Heavy Wind"),
    SoundTile(icon: Icons.tornado_rounded, soundTitle: " Tornado"),
    SoundTile(icon: Icons.snowing, soundTitle: " Snowy Winter"),
    SoundTile(icon: Icons.nights_stay, soundTitle: " Starry Nights"),
    SoundTile(icon: Icons.sunny, soundTitle: " Heavy Drift"),
    SoundTile(icon: Icons.cloud, soundTitle: "Cloudiness"),
    SoundTile(icon: Icons.thunderstorm, soundTitle: "Thunder"),
    SoundTile(icon: Icons.cloudy_snowing, soundTitle: "Medium Rain"),
    SoundTile(icon: Icons.cloudy_snowing, soundTitle: "Heavy Rain"),
    SoundTile(icon: Icons.notification_important, soundTitle: "Bell"),
    SoundTile(icon: Icons.ac_unit_outlined, soundTitle: "Snowy Day"),
  ];

  final List<SoundTile> rainSoundTiles = [
    SoundTile(icon: Icons.cloud, soundTitle: "Cloudiness"),
    SoundTile(icon: Icons.thunderstorm, soundTitle: "Thunder"),
    SoundTile(icon: Icons.cloudy_snowing, soundTitle: "Medium Rain"),
    SoundTile(icon: Icons.cloudy_snowing, soundTitle: "Heavy Rain"),
    SoundTile(icon: Icons.ac_unit_outlined, soundTitle: "Snowy Day"),
  ];

  final List<SoundTile> waterSoundTiles = [
    SoundTile(icon: Icons.cloudy_snowing, soundTitle: "Heavy Rain"),
    SoundTile(icon: Icons.ac_unit_outlined, soundTitle: "Snowy Day")
  ];

  final List<SoundTile> windSoundTiles = [
    SoundTile(icon: Icons.air, soundTitle: "Decent Wind"),
    SoundTile(icon: Icons.air_outlined, soundTitle: "Medium Wind"),
    SoundTile(icon: Icons.air_rounded, soundTitle: "Heavy Wind"),
    SoundTile(icon: Icons.tornado_rounded, soundTitle: " Tornado"),
    SoundTile(icon: Icons.snowing, soundTitle: " Snowy Winter"),
  ];

  final List<SoundTile> instrumentSoundTiles = [
    SoundTile(icon: Icons.volume_up_outlined, soundTitle: "Decent Wind"),
  ];

}