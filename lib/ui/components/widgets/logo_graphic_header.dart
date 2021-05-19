import 'package:fire_starter/ui/components/widgets/about.dart';
import 'package:flutter/material.dart';
import 'package:fire_starter/controllers/controllers.dart';
import 'package:get/get.dart';

class LogoGraphicHeader extends StatelessWidget {
  LogoGraphicHeader();
  final ThemeController themeController = ThemeController.to;

  @override
  Widget build(BuildContext context) {
    String _imageLogo = 'assets/icons/icon.png';
    if (themeController.isDarkModeOn == true) {
      _imageLogo = 'assets/icons/icon.png';
    }
    return Hero(
      tag: 'App Logo',
      child: GestureDetector(
        onDoubleTap: () => Get.to(AboutAppDialog()),
        child: CircleAvatar(
            foregroundColor: Colors.blue,
            backgroundColor: Colors.transparent,
            radius: 60.0,
            child: ClipOval(
              child: Image.asset(
                _imageLogo,
                fit: BoxFit.cover,
                width: 120.0,
                height: 120.0,
              ),
            )),
      ),
    );
  }
}
