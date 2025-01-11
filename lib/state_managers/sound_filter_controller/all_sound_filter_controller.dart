import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_item.dart';
import 'package:sound_scape_app/data/sound_item_list.dart';

class AllSoundFilterController extends GetxController {
  final TextEditingController _searchController = TextEditingController();

  final List<SoundItem> _allSoundItems = allSoundItems;

  List<SoundItem> _allFilteredSoundItems = [];

  List<SoundItem> get allFilteredSoundItems => _allFilteredSoundItems;

  TextEditingController get searchController => _searchController;

  void soundListFilter() {
    String query = _searchController.text.toLowerCase();
    if (query.isEmpty) {
      _allFilteredSoundItems = _allSoundItems;
    } else {
      _allFilteredSoundItems = _allSoundItems.where((item) {
        return item.soundTitle.toLowerCase().contains(query);
      }).toList();
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
    _allFilteredSoundItems = _allSoundItems;
    _searchController.addListener(soundListFilter);
    update();
  }

  @override
  void onClose() {
    _searchController.dispose();
    super.onClose();
  }
}
