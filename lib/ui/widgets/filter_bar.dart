import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/filter_controller.dart';
import 'package:sound_scape_app/state_managers/search_icon_controller.dart';

class FilterBar extends StatelessWidget {
   FilterBar({super.key});

  SearchIconController searchIconController = Get.put(SearchIconController());

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leadingWidth: 0,
      title:Form(
        key: _formKey,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 12, sigmaY: 10),
              child: Container(
                width: MediaQuery.sizeOf(context).width,

                decoration: BoxDecoration(
                    color: const Color(0xFF09001F).withOpacity(0.4),
                    borderRadius: BorderRadius.circular(12)),
                child: GetBuilder<FilterController>(builder: (controller){
                  return Center(
                    child: TextFormField(
                      controller: controller.searchController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_rounded,color: Colors.white,),
                          suffixIcon: IconButton(onPressed: (){
                            searchIconController.onTapSearchBar();
                            controller.searchController.clear();
                          },icon:Icon( Icons.cancel),color: Colors.white,),
                          hintText: "search here"

                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      )
    );
  }
}
