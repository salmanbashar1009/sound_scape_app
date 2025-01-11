import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_item.dart';
import 'package:sound_scape_app/state_managers/active_sound_controller.dart';
import 'package:sound_scape_app/state_managers/category_controller.dart';
import 'package:sound_scape_app/state_managers/play_toggle_button_controller.dart';
import 'package:sound_scape_app/state_managers/sound_filter_controller/all_sound_filter_controller.dart';
import 'package:sound_scape_app/ui/utils/app_theme.dart';

final AllSoundFilterController allSoundFilterController =
    Get.find<AllSoundFilterController>();

final PlayToggleButtonController playToggleButtonController =
    Get.find<PlayToggleButtonController>();

final CategoryController categoryController = Get.find<CategoryController>();

Widget soundTile(int index) {
  final  item = allSoundFilterController.allFilteredSoundItems[index];
  return GetBuilder<ActiveSoundController>(builder: (controller) {
    return InkWell(
      onTap: () {
        if (!item!.isLocked) {
          controller.toggleSelection(index);
          playToggleButtonController.onTapShow();
        }
        if (controller.selectedIndices.isEmpty) {
          playToggleButtonController.onTapDismiss();
        }
      },
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: controller.isSelected(index)! ? gradientBg : null,
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                  ),
                  child: Icon(
                    item!.icon,
                    color: controller.isSelected(index)!
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                    size: 24,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Text(
                item!.soundTitle,
                style: TextStyle(
                  color: controller.isSelected(index)!
                      ? Colors.white
                      : Colors.white.withOpacity(0.5),
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          item!.isLocked
              ? Positioned(
                  right: 12.3,
                  top: 1.8,
                  child: Container(
                    width: 25,
                    height: 24,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(23),
                        bottomLeft: Radius.circular(23),
                      ),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.lock,
                        color: Colors.white.withOpacity(0.5),
                        size: 8,
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  width: 0,
                  height: 0,
                ),
        ],
      ),
    );
  });
}
