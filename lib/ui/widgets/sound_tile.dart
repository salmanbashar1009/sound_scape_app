import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/play_toggle_button_controller.dart';

class SoundTile extends StatelessWidget {
  SoundTile({
    super.key,
    required this.icon,
    required this.soundTitle,
  });

  IconData icon;
  String soundTitle;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.find<PlayToggleButtonController>().onTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                shape: BoxShape.rectangle,
                border:
                Border.all(color: Color.fromRGBO(100, 100, 100, 0.2))),
            child: Icon(
              icon,
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            soundTitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white.withOpacity(
                0.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
