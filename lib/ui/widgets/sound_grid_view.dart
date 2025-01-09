import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/category_controller.dart';
import 'package:sound_scape_app/ui/widgets/sound_category/all_sound_grid.dart';
import 'package:sound_scape_app/ui/widgets/sound_category/instrument_sound_grid.dart';
import 'package:sound_scape_app/ui/widgets/sound_category/rain_sound_grid.dart';
import 'package:sound_scape_app/ui/widgets/sound_category/water_sound_grid.dart';
import 'package:sound_scape_app/ui/widgets/sound_category/wind_sound_grid.dart';

class SoundGridView extends StatelessWidget {
  SoundGridView({super.key});

  CategoryController categoryController = Get.put(CategoryController());

  final List<Widget> soundCategories = [
    AllSoundGrid(),
    RainSoundGrid(),
    WaterSoundGrid(),
    WindSoundGrid(),
    InstrumentSoundGrid()
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GetBuilder<CategoryController>(builder: (categoryController) {
        return soundCategories[categoryController.selectedIndex];
      }),
    );
  }
}
