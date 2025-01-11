import 'package:flutter/material.dart';
import 'package:sound_scape_app/ui/widgets/save_mix_bottom_sheet.dart';

void showSaveMixSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => SaveMixBottomSheet());
}