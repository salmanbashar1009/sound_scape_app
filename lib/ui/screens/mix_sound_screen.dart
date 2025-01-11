import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/active_sound_controller.dart';
import 'package:sound_scape_app/state_managers/sound_filter_controller/all_sound_filter_controller.dart';
import 'package:sound_scape_app/ui/widgets/screen_background.dart';
import 'package:sound_scape_app/ui/widgets/sound_control_bottom_nav_bar.dart';
import 'package:sound_scape_app/ui/widgets/volume_slider.dart';

class MixSoundScreen extends StatelessWidget {
  const MixSoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Column(
          children: [
            SizedBox(height: 60,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF020725),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Your',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            'Mix',
                            style: TextStyle(
                              color: Color(0xFFB53FFE),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: GetBuilder<ActiveSoundController>(
                        builder: (controller) => ListView.builder(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          itemCount: controller.selectedSounds.length,
                          itemBuilder: (context, index) {
                            final item = controller.selectedSounds[index];
                            final originalIndex = Get.find<AllSoundFilterController>().allFilteredSoundItems.indexOf(item);
                            return volumeSlider(item, originalIndex);
                          },
                        ),
                      ),
                    ),
                    SoundControlBottomNavBar(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
