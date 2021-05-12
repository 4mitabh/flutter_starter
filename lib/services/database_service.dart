import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:get/get.dart';
import '../models/models.dart';

class DatabaseService extends GetxService {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<List<FirebaseDoc>> collection(String path, {String? orderby, bool useCache = true, int limit = 100}) async {
    Query query = (orderby == null)
        ? _firestore.collection(FirebasePaths.prefix + path).limit(limit)
        : _firestore.collection(FirebasePaths.prefix + path).orderBy(orderby, descending: false).limit(limit);
    return DatabaseService.query(query, useCache: useCache);
  }

  static RxList<FirebaseDoc> watchQuery(Query query, {bool useCache = true}) {
    RxList<FirebaseDoc> docs = RxList.empty();
    // DatabaseService.query(query.orderBy('ts', descending: true).limit(50), useCache: true).then((result) {
    //   Timestamp ts = (result.isNotEmpty ? result.first.properties['ts'] : null) ?? Timestamp.fromMicrosecondsSinceEpoch(0);
    //   docs(result);
    // });
    docs.bindStream(
        query.orderBy('ts', descending: true).limit(50).snapshots().map((event) => event.docs.map((e) => FirebaseDoc.fromDocumentSnapshot(e)).toList()));
    return docs;
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

  static void create(String path, Map<String, dynamic> data, {String? id, SetOptions? setOptions}) {
    data['by'] = AuthService.to.firebaseUser.value!.uid;
    data['ts'] = FieldValue.serverTimestamp();
    print('Writing $data to ${FirebasePaths.prefix + path} ');
    if (id == null)
      _firestore.collection(FirebasePaths.prefix + path).doc().set(data, setOptions);
    else
      _firestore.doc(FirebasePaths.prefix + path + '/' + id).set(data, setOptions);
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
