import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/active_sound_controller.dart';
import 'package:sound_scape_app/state_managers/play_toggle_button_controller.dart';
import 'package:sound_scape_app/ui/widgets/show_save_mix_sheet.dart';

class SoundControlBottomNavBar extends StatelessWidget {
  const SoundControlBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildControlButton(
          icon: Icons.save,
          label: 'Save',
          onPressed: () {
            showSaveMixSheet(context);
          },
        ),
        GetBuilder<PlayToggleButtonController>(
          builder: (controller) => _buildControlButton(
            icon: controller.isPlay ? Icons.pause : Icons.play_arrow,
            label: controller.isPlay ? 'Pause' : 'Play',
            onPressed: (){
              controller.playSound();
            },
          ),
        ),
        _buildControlButton(
          icon: Icons.close,
          label: 'Clear All',
          onPressed: Get.find<ActiveSoundController>().clearAll,
        ),
      ],
    );
  }
  Widget _buildControlButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white.withOpacity(0.7)),
          onPressed: onPressed,
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
