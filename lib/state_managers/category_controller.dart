import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CategoryController extends GetxController {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onTap(int index) {
    _selectedIndex = index;
    update();
  }
}