
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_item_list.dart';
import 'package:sound_scape_app/state_managers/sound_filter_controller/all_sound_filter_controller.dart';
import 'package:sound_scape_app/ui/utils/app_theme.dart';
import 'package:sound_scape_app/ui/widgets/sound_tile.dart';

class AllSoundGrid extends StatefulWidget {
  AllSoundGrid({super.key});

  @override
  State<AllSoundGrid> createState() => _AllSoundGridState();
}

class _AllSoundGridState extends State<AllSoundGrid> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AllSoundFilterController>(
      builder: (controller) {
        return GridView.builder(
          itemCount:controller.allFilteredSoundItems.length ,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 2,
              mainAxisSpacing: 16),
          itemBuilder: (context, index) {
            return soundTile(index);
          },
        );
      }
    );
  }


}