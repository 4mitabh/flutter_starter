import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:get/get.dart';
import '../models/models.dart';

class DatabaseService extends GetxService {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<List<FirebaseDoc>> collection(String path, {String? orderby, bool useCache = true, int limit = 100}) async {
    Query query =
        orderby == null ? _firestore.collection(path).limitToLast(limit) : _firestore.collection(path).orderBy(orderby, descending: false).limitToLast(limit);
    return DatabaseService.query(query, useCache: useCache);
  }

  static Future<List<FirebaseDoc>> query(Query query, {bool useCache = true}) async {
    QuerySnapshot qs;
    if (!useCache)
      qs = await query.get(GetOptions(source: Source.server));
    else
      try {
        qs = (await query.get(GetOptions(source: Source.cache)));
        if (qs.metadata.isFromCache && qs.size == 0) {
          GetLogger.to.w('${query.parameters} got ${qs.size} from ${qs.metadata.isFromCache ? 'cache' : 'server'}. Forcing get from server.');
          qs = await query.get(GetOptions(source: Source.server));
        }
      } catch (_) {
        qs = await query.get(GetOptions(source: Source.server));
      }
    GetLogger.to.i('${query.parameters} got ${qs.size} from ${qs.metadata.isFromCache ? 'cache' : 'server'}');
    return qs.docs.map((QueryDocumentSnapshot doc) => FirebaseDoc.fromDocumentSnapshot(doc)).toList();
  }

  Future<void> update({required Map<String, dynamic> data, required String path}) async {
    try {
      data['ts'] = FieldValue.serverTimestamp();
      GetLogger.to.i('Updating ${path} to ${data.toString()}');
      _firestore.doc(path).set(data, SetOptions(merge: true));
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  static void create(String path, Map<String, dynamic> data) {
    data['by'] = AuthService.to.firebaseUser.value!.uid;
    data['ts'] = FieldValue.serverTimestamp();
    print('Writing to ${FirebasePaths.prefix + path} ');
    _firestore.collection(FirebasePaths.prefix + path).doc().set(data);
  }
}

class DocumentWatcher extends GetxController {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static DocumentWatcher get(path) {
    try {
      return Get.find(tag: path);
    } catch (e) {
      return Get.put<DocumentWatcher>(DocumentWatcher._(path), tag: path);
    }
  }

  FirebaseDoc? doc;
  DocumentWatcher._(String path) {
    GetLogger.to.d('New doc watcher for $path');
    _firestore.doc(path).snapshots().listen(_updateListner);
  }

  _updateListner(DocumentSnapshot snapshot) {
    GetLogger.to.d('Update from doc watcher for ${snapshot.reference.path}');
    doc = FirebaseDoc.fromDocumentSnapshot(snapshot);
    update();
  }
}
