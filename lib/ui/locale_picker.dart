import 'package:fire_starter/controllers/controllers.dart';
import 'package:fire_starter/services/config_service.dart';
import 'package:fire_starter/ui/auth/auth.dart';
import 'package:fire_starter/ui/components/components.dart';
import 'package:fire_starter/ui/components/widgets/glass/blob.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalePicker extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlobBackground(
            child: GetBuilder<LanguageController>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pick Your Langage',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'अपनी भाषा चुने',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(height: 30),
            PrimaryButton(
              labelText: 'English',
              onPressed: () => updateLangauage('en', controller),
            ),
            SizedBox(height: 30),
            PrimaryButton(
              labelText: 'हिंदी',
              onPressed: () => updateLangauage('hi', controller),
            ),
          ],
        ),
      ),
    )));
  }

  updateLangauage(String s, LanguageController controller) async {
    ConfigStorage.saveLocale(s);
    await controller.updateLanguage(s);
    Get.forceAppUpdate();
    Get.toNamed('/');
  }
}
