
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_item_list.dart';
import 'package:sound_scape_app/state_managers/search_icon_controller.dart';
import 'package:sound_scape_app/state_managers/sound_filter_controller/all_sound_filter_controller.dart';
import 'package:sound_scape_app/ui/utils/app_theme.dart';
import 'package:sound_scape_app/ui/widgets/sound_tile.dart';

class InstrumentSoundGrid extends StatefulWidget {
  InstrumentSoundGrid({super.key});

  @override
  State<InstrumentSoundGrid> createState() => _InstrumentSoundGridState();
}

class _InstrumentSoundGridState extends State<InstrumentSoundGrid> {

  SearchIconController searchIconController = Get.find<SearchIconController>();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:searchIconController.isSelected ? Get.find<AllSoundFilterController>().allFilteredSoundItems.length :  instrumentSoundItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 2,
          mainAxisSpacing: 16),
      itemBuilder: (context, index) {
        return soundTile(index);
      },
    );
  }


}