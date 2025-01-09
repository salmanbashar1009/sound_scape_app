
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sound_scape_app/state_managers/state_holder_binder.dart';
import 'package:sound_scape_app/ui/screens/sound_selection_screen.dart';
import 'package:sound_scape_app/ui/utils/app_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sleep Soundscape',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      initialBinding: StateHolderBinder(),
      home: SoundSelectionScreen(),
    );
  }
}