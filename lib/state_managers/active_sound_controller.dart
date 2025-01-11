import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_item.dart';
import 'package:sound_scape_app/data/sound_item_list.dart';
import 'package:sound_scape_app/state_managers/play_toggle_button_controller.dart';


class ActiveSoundController extends GetxController {

  Set<int> selectedIndices = {};

  void toggleSelection(int index) {
    if (selectedIndices.contains(index)) {
      selectedIndices.remove(index);
    } else {
      selectedIndices.add(index);
    }
    update();
  }
  bool isSelected(int index) => selectedIndices.contains(index);

  List<SoundItem> get selectedSounds {
    return selectedIndices.map((index) => allSoundItems[index]).toList();
  }

  void updateVolume(int index, double value) {
    allSoundItems[index].volume = value;
    update();
  }

  void removeSound(int index) {
    selectedIndices.remove(index);
    if(selectedIndices.isEmpty){
      Get.back();
      Get.find<PlayToggleButtonController>().onTapDismiss();
    }
    update();
  }

  void clearAll() {
    selectedIndices.clear();
    if(selectedIndices.isEmpty){
      Get.back();
      Get.find<PlayToggleButtonController>().onTapDismiss();
    }
    update();
  }

}