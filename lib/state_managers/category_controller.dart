import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CategoryController extends GetxController {

  final List<String> categoryItems = ["All", "Rain", "Water", "Wind", "Instrument"];

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onTap(int index) {
    _selectedIndex = index;
    update();
  }



}