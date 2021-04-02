import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

class StorageService extends GetxService {
  static FirebaseStorage _storage = FirebaseStorage.instance;

  static Future<ListResult> list(String path) async {
    ListResult result = await _storage.ref(path).listAll();

    result.items.forEach((Reference ref) {
      print('Found file: $ref');
    });

    result.prefixes.forEach((Reference ref) {
      print('Found directory: $ref');
    });
    return result;
  }

  static Future<File> getImageFileFromAssets(ByteData byteData) async {
    final file = File('${(await getTemporaryDirectory()).path}/${Uuid().toString()}');
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }

  static Future<void> upload({required File file, required String path, required String contentType, required Map<String, String> metadata}) async {
    SettableMetadata _metadata = SettableMetadata(cacheControl: 'max-age=60', contentType: contentType, customMetadata: metadata);

    UploadTask task = _storage.ref(FirebasePaths.prefix + path).putFile(file, _metadata);

    task.snapshotEvents.listen((TaskSnapshot snapshot) {
      GetLogger.to.d('Task state: ${snapshot.state}');
      GetLogger.to.d('Progress: ${(snapshot.bytesTransferred / snapshot.totalBytes) * 100} %');
    }, onError: (e) {
      // The final snapshot is also available on the task via `.snapshot`,
      // this can include 2 additional states, `TaskState.error` & `TaskState.canceled`
      GetLogger.to.w(e);
      showSnackBar('Upload $path', e.toString());
    });

    // We can still optionally use the Future alongside the stream.
    try {
      await task;
      GetLogger.to.i('Upload $path Complete');
      showSnackBar('Upload $path', 'Complete');
    } on FirebaseException catch (e) {
      GetLogger.to.w(e);
      showSnackBar('Upload $path', e.toString());
    }
  }

  static packAndUploadPhoto({required String path, required Map<String, String> metadata}) async {
    final file = await ImagePicker().getImage(source: ImageSource.gallery);
    if (file != null) upload(file: File(file.path), path: '$path/upld-${Uuid().v1()}' + '.jpg', metadata: metadata, contentType: 'image/jpeg');
  }

  static packAndUploadVideo({required String path, required Map<String, String> metadata}) async {
    final file = await ImagePicker().getVideo(source: ImageSource.gallery);
    if (file != null) upload(file: File(file.path), path: '$path/upld-${Uuid().v1()}' + '.mp4', metadata: metadata, contentType: 'video/mpeg');
  }
}
