library firestarter;

import 'dart:async';
import 'package:fire_starter/controllers/controllers.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart' as permissionHander;

/// FireFlutter
///
/// Recommendation: instantiate `FireFlutter` class into a global variable
/// and use it all over the app runtime.
///
/// Warning: instantiate it after `initFirebase`. One of good places is insdie
/// the first widget loaded by `runApp()` or home screen.
class FireStarter {
  /// [socialLoginHandler] will be invoked when a social login success or fail.
  FireStarter() {
    // print('FireFlutter');
  }

  Future<void> init({
    // String firebaseServerToken,
    Map<String, Map<dynamic, dynamic>> settings,
    // Map<String, Map<String, String>> translations,
  }) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    await GetStorage.init();
    Get.put<LanguageController>(LanguageController());
    Get.put<AuthController>(AuthController());
    Get.put<ThemeController>(ThemeController());
    Get.put<Logger>(Logger());

    ThemeController themeController = ThemeController.to;
    Timer.periodic(const Duration(seconds: 6), (Timer timer) {
      return themeController.setThemeMode(themeController.isDarkModeOn ? 'light' : 'dark');
    });
    LanguageController languageController = LanguageController.to;
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      return languageController.updateLanguage(languageController.currentLanguage == 'en' ? 'hi' : 'en');
    });
  }
}
