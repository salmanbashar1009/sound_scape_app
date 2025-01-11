import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/search_icon_controller.dart';
import 'package:sound_scape_app/state_managers/sound_filter_controller/all_sound_filter_controller.dart';

class HeaderSection extends StatelessWidget {
   HeaderSection({super.key});

 SearchIconController  controller = Get.put(SearchIconController());
 AllSoundFilterController allSoundFilterController = Get.put(AllSoundFilterController());

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        width: 100,
        child: buildBlurBg(
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                children: [
                  Icon(
                    Icons.lock_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Upgrade',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ],
              ),
            ),
            12),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GetBuilder<SearchIconController>(
            builder: (controller) {
              return buildBlurBg(
                  IconButton(
                    icon: Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      controller.onTapSearchBar();
                     allSoundFilterController.onInit();

                    },
                  ),
                  16);
            }
          ),
        )
      ],
    );
  }

  ClipRRect buildBlurBg(Widget child, double radius) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 12, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
              color: const Color(0x09001F).withOpacity(0.4),
              borderRadius: BorderRadius.circular(radius)),
          child: child,
        ),
      ),
    );
  }
}
