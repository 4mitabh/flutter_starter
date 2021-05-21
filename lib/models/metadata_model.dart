import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:get/get.dart';

class MetadataModel {
  int build;
  int majorVersion;
  int minorVersion;
  int maxBuildVaccine;
  String version;

  MetadataModel({required this.build, required this.minorVersion, required this.majorVersion, required this.version, required this.maxBuildVaccine});

  Map toJson() => {'build': build, 'maxBuildVaccine': maxBuildVaccine, 'version': version};

  static Future<MetadataModel> get() async {
    final FirebaseFirestore db = FirebaseFirestore.instance;
    try {
      DocumentSnapshot<Map<String, dynamic>> doc = await db.doc('${FirebasePaths.prefix}${FirebasePaths.metadata}/all').get();
      if (!doc.exists) GetLogger.to.w('Cannout find ${FirebasePaths.prefix}${FirebasePaths.metadata}/all');
      return MetadataModel._fromDocumentSnapshot(doc);
    } on Exception catch (e) {
      GetLogger.to.w(e);
      return MetadataModel(build: 1, version: '0.0.0', majorVersion: 0, minorVersion: 0, maxBuildVaccine: 0);
    }
  }

  factory MetadataModel._fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    var data = snapshot.data();
    if (data == null) return MetadataModel(build: 1, version: '0.0.0', majorVersion: 0, minorVersion: 0, maxBuildVaccine: 0);
    return MetadataModel(
        build: data['build'],
        version: data['version'],
        maxBuildVaccine: (GetPlatform.isAndroid ? data['maxBuildVaccineAndroid'] : data['maxBuildVaccineIOS']) ?? 0,
        majorVersion: int.parse(data['version'].split('.')[0]),
        minorVersion: int.parse(data['version'].split('.')[1]));
  }

  String toString() {
    return toJson().toString();
  }
}
