import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/data/sound_tile_list.dart';
import 'package:sound_scape_app/ui/widgets/sound_tile.dart';


class FilterController extends GetxController {
  final TextEditingController _searchController = TextEditingController();

  final List<SoundTile> _allSoundTiles = SoundTileList().allSoundTiles;

  List<SoundTile> _allFilteredSoundTiles = [];


  List<SoundTile> get allFilteredSoundTile => _allFilteredSoundTiles;


  TextEditingController get searchController => _searchController;


  void allSoundfilter() {
    String query = _searchController.text.toLowerCase();
    if(query.isEmpty){
      _allFilteredSoundTiles = _allSoundTiles;
    }else{
      _allFilteredSoundTiles = _allSoundTiles.where((item) {
        return item.soundTitle.toLowerCase().contains(query);
      }).toList();
    }
    update();
  }




  @override
  void onInit() {
    super.onInit();
    _allFilteredSoundTiles = _allSoundTiles;
    _searchController.addListener(allSoundfilter);
    update();
  }

  @override
  void onClose() {
    _searchController.dispose();
    super.onClose();
  }
}
