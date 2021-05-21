import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/models/metadata_model.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoService {
  static String appName = '';
  static String packageName = '';
  static int minorVersion = 0;
  static int majorVersion = 0;
  static int buildNumber = 0;
  static String country = 'US';
  static MetadataModel? metadata;

  static init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    majorVersion = int.parse(packageInfo.version.split('.')[0]);
    minorVersion = int.parse(packageInfo.version.split('.')[1]);
    buildNumber = int.parse(packageInfo.buildNumber);
    packageName = packageInfo.packageName;
    appName = packageInfo.appName;
    country = await getCountry();
  }
}
