import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/active_sound_controller.dart';
import 'package:sound_scape_app/state_managers/category_controller.dart';
import 'package:sound_scape_app/state_managers/search_icon_controller.dart';
import 'package:sound_scape_app/state_managers/sound_filter_controller/all_sound_filter_controller.dart';
import 'package:sound_scape_app/state_managers/play_toggle_button_controller.dart';

class StateHolderBinder extends Bindings{
  @override
  void dependencies() {
    Get.put(AllSoundFilterController());
    Get.put(ActiveSoundController());
    Get.put(PlayToggleButtonController());
    Get.put(CategoryController());
    Get.put(SearchIconController());

  }
}