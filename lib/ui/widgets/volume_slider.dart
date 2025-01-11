import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_item.dart';
import 'package:sound_scape_app/state_managers/active_sound_controller.dart';

final ActiveSoundController activeSoundController = Get.find<ActiveSoundController>();

Widget volumeSlider(SoundItem item, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(
          flex: 9,
          child: Stack(
            children: [
              SliderTheme(
                data: SliderThemeData(
                  trackHeight: 30,
                  thumbColor: Colors.white,
                  activeTrackColor: Color(0xFFB53FFE),
                  inactiveTrackColor: Colors.white.withOpacity(0.1),
                  overlayColor: Color(0xFF020725),
                  thumbShape: RoundSliderThumbShape(
                    enabledThumbRadius: 16,
                  ),
                  overlayShape: RoundSliderOverlayShape(
                    overlayRadius: 16,
                  ),
                ),
                child: Slider(
                  value: item.volume,
                  onChanged: (value) {
                    return activeSoundController.updateVolume(index, value);
                  },
                ),
              ),
              Positioned(
                left: item.volume < 0.15 ? 230 : 30,
                  top: 6,
                  child: Text(item.soundTitle,style: TextStyle(color: Colors.white.withOpacity(0.6)),))
      ]
          ),
        ),

        Flexible(
          flex:1,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              icon: Icon(Icons.cancel, color: Colors.white.withOpacity(0.5), size: 16),
              onPressed: () => activeSoundController.removeSound(index),
              padding: EdgeInsets.all(8),
            ),
          ),
        ),
      ],
    ),
  );
}

