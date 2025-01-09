import 'package:get/get.dart';

class ActiveSoundController extends GetxController{


  int? _selectedIndex ;

  int? get selectedIndex => _selectedIndex;

  void activeSound(int index){
    _selectedIndex = index;
    update();
  }
}