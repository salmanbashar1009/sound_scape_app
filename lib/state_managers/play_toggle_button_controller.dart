import 'package:get/get.dart';

class PlayToggleButtonController extends GetxController{
 bool _isSelected = false;

  bool get isSelected => _isSelected;
  void onTap(){
   _isSelected = !_isSelected;
    update();
  }


}