import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/services/package_info.dart';
import 'package:get/get.dart';

class MetadataModel {
  int build;
  int majorVersion;
  int minorVersion;
  int maxBuildVaccine;
  List<Map<String, dynamic>>? introSlider;
  List<Map<String, dynamic>>? introSlider_hi;

  String version;

  MetadataModel(
      {required this.build,
      required this.minorVersion,
      this.introSlider,
      this.introSlider_hi,
      required this.majorVersion,
      required this.version,
      required this.maxBuildVaccine});

  Map toJson() => {'build': build, 'maxBuildVaccine': maxBuildVaccine, 'version': version};

  static init() {
    final FirebaseFirestore db = FirebaseFirestore.instance;
    db.doc('${FirebasePaths.prefix}${FirebasePaths.metadata}/all').snapshots().listen((event) {
      DocumentSnapshot<Map<String, dynamic>> doc = event;
      if (!doc.exists) GetLogger.to.w('Cannout find ${FirebasePaths.prefix}${FirebasePaths.metadata}/all');
      PackageInfoService.metadata = MetadataModel._fromDocumentSnapshot(doc);
    });
  }

  factory MetadataModel._fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    var data = snapshot.data();
    if (data == null) return MetadataModel(build: 1, version: '0.0.0', majorVersion: 0, minorVersion: 0, maxBuildVaccine: 0);
    return MetadataModel(
        build: data['build'],
        version: data['version'],
        introSlider: ((data['introSlider'] ?? []) as List).cast(),
        introSlider_hi: ((data['introSlider_hi'] ?? []) as List).cast(),
        maxBuildVaccine: (GetPlatform.isAndroid ? data['maxBuildVaccineAndroid'] : data['maxBuildVaccineIOS']) ?? 0,
        majorVersion: int.parse(data['version'].split('.')[0]),
        minorVersion: int.parse(data['version'].split('.')[1]));
  }

  String toString() {
    return toJson().toString();
  }
}
