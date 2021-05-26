import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get_storage/get_storage.dart';

class PreferencesNames {
  static String user = 'user';
  static String isAlpha = 'isAlpha';
  static String diagnostics = 'diagnosticsOn';
  static String theme = 'Theme';
  static String referral = 'Referral';
  static String introCompleted = 'introCompleted';
  static String emulation = 'emulation';
  static String token = 'token';
  static String messages = 'messages';
  static String unlockTime = 'unlockTime';
  static String locale = 'locale';
  static String showIntroSlider = 'showIntroSlider';
}

class ConfigStorage {
  static GetStorage prefs = GetStorage();

  static Future saveAlpha(bool alpha) => prefs.write(PreferencesNames.isAlpha, alpha);
  static bool get isAlpha => prefs.read(PreferencesNames.isAlpha) ?? kDebugMode;

  static Future saveDiagnostics(bool diagnostics) => prefs.write(PreferencesNames.diagnostics, diagnostics);
  static bool get diagnostics => prefs.read(PreferencesNames.diagnostics) ?? kDebugMode;

  static Future saveLocale(String locale) => prefs.write(PreferencesNames.locale, locale);
  static String? get locale => prefs.read(PreferencesNames.locale);

  static Future saveUseEmulation(bool emulation) => prefs.write(PreferencesNames.emulation, emulation);
  static bool get useEmulation => prefs.read(PreferencesNames.emulation) ?? false;

  static Future saveShowIntroSlider(bool showIntroSlider) => prefs.write(PreferencesNames.showIntroSlider, showIntroSlider);
  static bool get showIntroSlider => prefs.read(PreferencesNames.showIntroSlider) ?? true;
}
