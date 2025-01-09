
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/active_sound_controller.dart';
import 'package:sound_scape_app/state_managers/filter_controller.dart';
import 'package:sound_scape_app/ui/utils/app_theme.dart';
import '../../../state_managers/play_toggle_button_controller.dart';

class AllSoundGrid extends StatelessWidget {
  AllSoundGrid({super.key});

  final PlayToggleButtonController playController = Get.put(PlayToggleButtonController());
  final ActiveSoundController activeSoundController = Get.put(ActiveSoundController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(builder: (filterController) {
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 18),
          itemCount: Get.find<FilterController>().allFilteredSoundTile.length,
          itemBuilder: (context, index) {
            return GetBuilder<PlayToggleButtonController>(
              builder: (controller) {
                return filterController.allFilteredSoundTile[index];
              }
            );
          },
        ),
      );
    });
  }
}
