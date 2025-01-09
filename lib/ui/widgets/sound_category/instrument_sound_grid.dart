import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_tile_list.dart';
import 'package:sound_scape_app/state_managers/category_controller.dart';

import 'package:sound_scape_app/state_managers/filter_controller.dart';
import 'package:sound_scape_app/state_managers/search_icon_controller.dart';
import '../../../state_managers/play_toggle_button_controller.dart';

class InstrumentSoundGrid extends StatelessWidget {
  InstrumentSoundGrid({super.key});

  final CategoryController categoryController = Get.put(CategoryController());
  final PlayToggleButtonController playController =
      Get.put(PlayToggleButtonController());

  final SearchIconController searchIconController =
      Get.put(SearchIconController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FilterController>(builder: (searchController) {
      return Padding(
        padding: const EdgeInsets.only(top: 16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4, crossAxisSpacing: 2, mainAxisSpacing: 18),
          itemCount: searchIconController.isSelected
              ? Get.find<FilterController>().allFilteredSoundTile.length
              : (SoundTileList().instrumentSoundTiles.length),
          itemBuilder: (context, index) {
            return GetBuilder<PlayToggleButtonController>(builder: (context) {
              return searchIconController.isSelected ? Get.find<FilterController>().allFilteredSoundTile[index] : SoundTileList().instrumentSoundTiles[index];
            });
          },
        ),
      );
    });
  }
}
