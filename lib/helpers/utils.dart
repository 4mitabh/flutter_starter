import 'dart:io';
import 'package:fire_starter/fire_starter.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/ui/components/components.dart';
import 'package:fire_starter/ui/components/widgets/glass/glass_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:logger/logger.dart';
import 'package:flutter/services.dart' show rootBundle;

extension GetLogger on Logger {
  static Logger to = Get.find();
}

Future<String> getCountry() async {
  Logger log = GetLogger.to;
  Duration timeoffset = DateTime.now().timeZoneOffset;
  log.v("Using timeoffset ${DateTime.now().timeZoneOffset} ${DateTime.now().timeZoneName}");
  if (!kIsWeb) log.v(Get.deviceLocale);
  if (timeoffset == Duration(hours: 5, minutes: 30)) {
    log.v('Country from timeoffset India');
    return 'IN';
  }
  if (timeoffset == Duration(hours: 9, minutes: 0)) {
    log.v('Country from timeoffset Japan');
    return 'JP';
  }
  // Extend more locales using timezone here....

  String locale = (Get.deviceLocale?.countryCode) ?? 'US';
  if (locale.length >= 5) locale = locale.substring(locale.length - 2, locale.length);
  log.v("Country from locale: $locale");
  if (['IN', 'JP', 'US', 'CA', 'GB'].contains(locale)) return locale;
  return locale;
}

showSnackBar(title, message, {SnackPosition position = SnackPosition.TOP, int duration = 15}) => Get.snackbar(title, message,
    snackPosition: position,
    duration: Duration(seconds: duration),
    backgroundColor: Get.theme.snackBarTheme.backgroundColor,
    colorText: Get.theme.snackBarTheme.actionTextColor);

Future<String> getImageFilePathFromAssets(String path) async {
  final byteData = await rootBundle.load(path);
  final file = File('${(await getTemporaryDirectory()).path}/temp.jpg');
  await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
  return file.path;
}
