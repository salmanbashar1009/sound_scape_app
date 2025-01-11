
import 'package:flutter/material.dart';
import 'package:sound_scape_app/data/sound_item.dart';

final List<SoundItem> allSoundItems = [
  SoundItem(soundTitle: 'Typhoon', icon: Icons.cyclone),
  SoundItem(soundTitle: 'Sleet', icon: Icons.grain),
  SoundItem(soundTitle: 'Heavenly Drift', icon: Icons.cloud, isLocked: true),
  SoundItem(soundTitle: 'Snowy Winter', icon: Icons.ac_unit, isLocked: true),
  SoundItem(soundTitle: 'Cloudiness', icon: Icons.cloud_queue, isLocked: true),
  SoundItem(soundTitle: 'Desert Wind', icon: Icons.air),
  SoundItem(soundTitle: 'Starry Nights', icon: Icons.nights_stay),
  SoundItem(soundTitle: 'Tribal Drums', icon: Icons.music_note),
  SoundItem(soundTitle: 'Light Rain', icon: Icons.water_drop, isLocked: true),
  SoundItem(soundTitle: 'light Wind', icon: Icons.air, isLocked: true),
  SoundItem(soundTitle: 'Thunder', icon: Icons.thunderstorm, isLocked: true),
  SoundItem(soundTitle: 'Tornado', icon: Icons.tornado, isLocked: true),
  SoundItem(soundTitle: 'Medium Rain', icon: Icons.water, isLocked: true),
  SoundItem(soundTitle: 'Snowy Breeze', icon: Icons.snowboarding, isLocked: true),
  SoundItem(soundTitle: 'Heavy Rain', icon: Icons.water, isLocked: true),
  SoundItem(soundTitle: 'Wind', icon: Icons.air, isLocked: true),
];

final List<SoundItem> rainSoundItems = [
  SoundItem(soundTitle: 'Light Rain', icon: Icons.water_drop, isLocked: true),
  SoundItem(soundTitle: 'Medium Rain', icon: Icons.water, isLocked: true),
  SoundItem(soundTitle: 'Heavy Rain', icon: Icons.water, isLocked: true),

];

final List<SoundItem> waterSoundItems = [
  SoundItem(soundTitle: 'Sleet', icon: Icons.grain),
];

final List<SoundItem> windSoundItems = [
  SoundItem(soundTitle: 'light Wind', icon: Icons.air, isLocked: true),
  SoundItem(soundTitle: 'Medium Wind', icon: Icons.air, isLocked: true),
  SoundItem(soundTitle: 'Desert Wind', icon: Icons.air),
];

final List<SoundItem> instrumentSoundItems = [
  SoundItem(soundTitle: 'Tribal Drums', icon: Icons.music_note),
];