import 'package:flutter/cupertino.dart';
import 'package:sound_scape_app/ui/utils/app_utilities.dart';

class ScreenBackground extends StatelessWidget {
  const ScreenBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(AssetsUtils.screenBg,fit: BoxFit.fill,),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: CupertinoColors.black.withOpacity(0.15),
        ),
        SafeArea(child: child)
      ],
    );
  }
}