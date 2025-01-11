import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_item.dart';
import 'package:sound_scape_app/state_managers/active_sound_controller.dart';

final ActiveSoundController activeSoundController = Get.find<ActiveSoundController>();

Widget volumeSlider(SoundItem item, int index) {
  return Container(
    margin: EdgeInsets.only(bottom: 12),
    decoration: BoxDecoration(
      color: Color(0xFF3A1266),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: Color(0xFF6B28B8),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            item.soundTitle,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderThemeData(
              trackHeight: 4,
              thumbColor: Colors.white,
              activeTrackColor: Color(0xFF6B28B8),
              inactiveTrackColor: Colors.white.withOpacity(0.2),
              overlayColor: Colors.white.withOpacity(0.1),
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 8,
              ),
              overlayShape: RoundSliderOverlayShape(
                overlayRadius: 16,
              ),
            ),
            child: Slider(
              value: item.volume,
              onChanged: (value) => activeSoundController.updateVolume(index, value),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.1),
          ),
          child: IconButton(
            icon: Icon(Icons.close, color: Colors.white, size: 20),
            onPressed: () => activeSoundController.removeSound(index),
            padding: EdgeInsets.all(8),
          ),
        ),
      ],
    ),
  );
}