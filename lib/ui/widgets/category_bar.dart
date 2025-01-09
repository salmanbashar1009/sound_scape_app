import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/category_controller.dart';
import 'package:sound_scape_app/ui/utils/app_theme.dart';

class CategoryBar extends StatelessWidget {
  CategoryBar({super.key});

  final List<String> categoryItems = ["All", "Rain", "Water", "Wind", "Instrument"];


  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 65,
      color: const Color(0xFF09001F),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryItems.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder<CategoryController>(builder: (controller){
                return InkWell(
                  onTap: () {
                    controller.onTap(index);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: controller.selectedIndex == index ? gradientBg : null,
                      border: Border.all(
                          color: CupertinoColors.white.withOpacity(0.15)),
                    ),
                    child: Center(
                      child: Text(
                        categoryItems[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}