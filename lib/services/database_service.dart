import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/services/auth_service.dart';
import 'package:fire_starter/services/config_service.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../models/models.dart';

class DatabaseService extends GetxService {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;
  DatabaseService() : super() {
    if (ConfigStorage.useEmulation)
      FirebaseFirestore.instance.settings = const Settings(
        host: '192.168.1.138:8080',
        sslEnabled: false,
        persistenceEnabled: false,
      );
  }

  static Future<List<FirebaseDoc>> collection(String path, {String? orderby, bool useCache = true, int limit = 100}) async {
    GetLogger.to.i('Collection ${path}');
    Query<Map<String, dynamic>> query = (orderby == null)
        ? _firestore.collection(FirebasePaths.prefix + path).limit(limit)
        : _firestore.collection(FirebasePaths.prefix + path).orderBy(orderby, descending: false).limit(limit);
    return DatabaseService.query(query, useCache: useCache);
  }

  static Future<List<FirebaseDoc>> collectionGroup(String name,
      {required dynamic canRead,
      Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>>)? query,
      String? orderby,
      bool useCache = true,
      int limit = 100}) async {
    GetLogger.to.i('Collection Group ${name} read by $canRead');
    Query<Map<String, dynamic>> q = _firestore.collectionGroup(name);
    if (canRead.runtimeType == String)
      q = q.where('canRead', arrayContains: canRead);
    else if (canRead.runtimeType == List) q = q.where('canRead', arrayContainsAny: canRead);
    if (query != null) q = query(q);
    q = (orderby == null) ? q.limit(limit) : q.orderBy(orderby, descending: false).limit(limit);
    return DatabaseService.query(q, useCache: useCache);
  }

  static Future<Stream<List<FirebaseDoc>>> collectionGroupWatch(String name,
      {required dynamic canRead, Query<Map<String, dynamic>> Function(Query<Map<String, dynamic>>)? query, required int limit}) async {
    GetLogger.to.i('Collection Group ${name} read by $canRead');
    Query<Map<String, dynamic>> q = _firestore.collectionGroup(name);
    if (canRead.runtimeType == String)
      q = q.where('canRead', arrayContains: canRead);
    else if (canRead.runtimeType == List) q = q.where('canRead', arrayContainsAny: canRead);

    if (query != null) q = query(q);
    return await DatabaseService.queryWatch(q, limit: limit);
  }

  static Future<Stream<List<FirebaseDoc>>> queryWatch(Query<Map<String, dynamic>> query, {int limit = 100}) async {
    var stream = query
        .limit(limit)
        .snapshots()
        .map((event) => event.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => FirebaseDoc.fromDocumentSnapshot(doc)).toList());
    return stream.map((updates) {
      GetLogger.to.i('Got updates $updates');
      return updates;
    });
  }

  static Future<Stream<List<FirebaseDoc>>> queryWatchOld(Query<Map<String, dynamic>> query, {int limit = 100}) async {
    var cachedResults = (await query.orderBy('ts', descending: false).limitToLast(limit).get(GetOptions(source: Source.serverAndCache)))
        .docs
        .map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => FirebaseDoc.fromDocumentSnapshot(doc))
        .toList();

    Timestamp lastUpdate = cachedResults.isEmpty ? Timestamp.fromMicrosecondsSinceEpoch(0) : cachedResults.last.properties['ts'];

    var stream = query
        .where('ts', isGreaterThan: lastUpdate)
        .snapshots()
        .map((event) => event.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => FirebaseDoc.fromDocumentSnapshot(doc)).toList());
    return stream.map((updates) {
      GetLogger.to.i('Got updates $updates');
      var updatedIDs = updates.map((e) => e.id).toList();
      cachedResults.removeWhere((element) => updatedIDs.contains(element.id));
      cachedResults.addAll(updates);
      if (cachedResults.length > limit) cachedResults.removeRange(0, cachedResults.length - limit);
      return cachedResults;
    });
  }

  static Future<List<FirebaseDoc>> query(Query<Map<String, dynamic>> query, {bool useCache = true}) async {
    QuerySnapshot<Map<String, dynamic>> qs;
    if (!useCache)
      qs = await query.get(GetOptions(source: Source.server));
    else
      try {
        qs = (await query.get(GetOptions(source: Source.cache)));
        if (qs.metadata.isFromCache && qs.size == 0) {
          GetLogger.to.i('${query.parameters} got ${qs.size} from ${qs.metadata.isFromCache ? 'cache' : 'server'}. Forcing get from server.');
          qs = await query.get(GetOptions(source: Source.server));
        }
      } catch (_) {
        qs = await query.get(GetOptions(source: Source.server));
      }
    GetLogger.to.i('${query.parameters} got ${qs.size} from ${qs.metadata.isFromCache ? 'cache' : 'server'}');
    return qs.docs.map((QueryDocumentSnapshot<Map<String, dynamic>> doc) => FirebaseDoc.fromDocumentSnapshot(doc)).toList();
  }

  static Future<void> update({required Map<String, dynamic> data, required String path}) async {
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

  _updateListner(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    GetLogger.to.d('Update from doc watcher for ${snapshot.reference.path}');
    doc = FirebaseDoc.fromDocumentSnapshot(snapshot);
    update();
  }
}
