import 'package:get/get.dart';

class SearchIconController extends GetxController{
  bool _isSearchBarSelected = false;

  bool get isSelected => _isSearchBarSelected;

  void onTapSearchBar() {
    _isSearchBarSelected = !_isSearchBarSelected;
    update();
  }
}