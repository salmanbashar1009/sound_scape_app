import 'package:get/get.dart';

class PlayToggleButtonController extends GetxController{
 bool _isSelected = false;
 bool _isPlay = true;

  bool get isSelected => _isSelected;
  bool get isPlay => _isPlay;
  void onTapShow(){
   _isSelected = true;
    update();
  }

 void onTapDismiss(){
  _isSelected = false;
  update();
 }

 void playSound(){
   _isPlay = !_isPlay;
   update();
 }


}