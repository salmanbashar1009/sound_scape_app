import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/category_controller.dart';
import 'package:sound_scape_app/state_managers/play_toggle_button_controller.dart';
import 'package:sound_scape_app/ui/widgets/bottom_nav_bar.dart';
import 'package:sound_scape_app/ui/widgets/category_bar.dart';
import 'package:sound_scape_app/ui/widgets/filter_bar.dart';
import 'package:sound_scape_app/ui/widgets/header_section.dart';
import 'package:sound_scape_app/ui/widgets/play_toggle_button.dart';
import 'package:sound_scape_app/ui/widgets/screen_background.dart';
import 'package:sound_scape_app/ui/widgets/notched_tab_bar.dart';
import 'package:sound_scape_app/ui/widgets/sound_grid_view.dart';

import '../../state_managers/search_icon_controller.dart';

class SoundSelectionScreen extends StatelessWidget {

 final PlayToggleButtonController playToggleButtonController = Get.put(PlayToggleButtonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ScreenBackground(
        child: GetBuilder<SearchIconController>(builder: (controller){
          return Stack(
            children: [
              Column(
                children: [
                  controller.isSelected ? FilterBar() : HeaderSection(),
                  SizedBox(
                    height: 100,
                  ),
                  NotchedTabBar(),
                  Expanded(
                    child: Container(
                      color: const Color.fromRGBO(9, 0, 31, 1),
                      child: Column(
                        children: [
                          controller.isSelected ? Divider(color: const Color.fromRGBO(9, 0, 31, 1)) : CategoryBar(),
                          SoundGridView()
                        ],
                      ),
                    ),
                  ),
                  BottomNavBar(),
                ],
              ),
              GetBuilder<PlayToggleButtonController>(builder: (controller){
                return controller.isSelected  ?  PlayToggleButton() : SizedBox();
              })
            ],
          );
        })
      ),
    );
  }
}


