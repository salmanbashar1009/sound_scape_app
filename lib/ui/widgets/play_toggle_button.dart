import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_toggle_button/flutter_toggle_button.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/play_toggle_button_controller.dart';

class PlayToggleButton extends StatelessWidget {
  PlayToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 85,
      left: 95,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: FlutterToggleButton(
              items: [
                Icon(
                  Icons.pause,
                  color: Colors.white70,
                  size: 30,
                ),
                Icon(
                  Icons.volume_up,
                  color: Colors.white70,
                  size: 30,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.white70,
                  size: 30,
                ),
                IconButton(
                  onPressed: () {
                    Get.find<PlayToggleButtonController>().onTap();
                  },
                  icon:
                  Icon(Icons.cancel, color: Colors.white70, size: 30),
                ),
              ],
              onTap: (index) {},
              buttonWidth: 40,
              buttonHeight: 35,
              borderRadius: 12,
              disableTextColor: Colors.grey,
              outerContainerColor:
              const Color(0xFFD3B7EB).withOpacity(0.2),
              buttonGradient: LinearGradient(colors: [
                Color(0xFF42098F),
                Color(0xFFB53FFE),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
