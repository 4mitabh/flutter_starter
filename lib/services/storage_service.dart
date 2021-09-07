import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/helpers/helpers.dart';
import 'package:fire_starter/services/database_service.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';
import 'package:image/image.dart' as img;
import 'package:blurhash_dart/blurhash_dart.dart';

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

  static Future<void> upload({required File file, required String path, String? id, required String contentType, required Map<String, String> metadata}) async {
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

  static Future<String?> packAndUploadPhoto({required String path, required Map<String, String> metadata}) async {
    final file = await ImagePicker().getImage(source: ImageSource.gallery);
    if (file != null) {
      String ext = '.jpeg';
      try {
        ext = file.path.split('.').last;
      } catch (e) {}
      GetLogger.to.e(ext);
      var id = 'upld-${Uuid().v1().replaceAll('-', '')}.$ext';
      Map<String, dynamic> message = Map<String, dynamic>.from(metadata);
      message['title'] = 'Uploading Photo';
      message['image'] = '';
      message['tn'] = StorageService.blurHashEncode(File(file.path));
      DatabaseService.create(path, message, id: id, setOptions: SetOptions(merge: true));
      upload(file: File(file.path), path: '$path/$id', metadata: metadata, contentType: 'image/$ext');
      return '$path/$id';
    }
  }

  static Future<String?> packAndUploadVideo({required String path, required Map<String, String> metadata}) async {
    final file = await ImagePicker().getVideo(source: ImageSource.gallery);
    if (file != null) {
      Map<String, dynamic> message = Map<String, dynamic>.from(metadata);
      message['title'] = 'Uploading Video';
      var id = 'upld-${Uuid().v1().replaceAll('-', '')}.mpg';
      DatabaseService.create(path, message, id: id, setOptions: SetOptions(merge: true));
      upload(file: File(file.path), path: '$path/$id', metadata: metadata, contentType: 'video/mpeg');
      return '$path/$id';
    }
  }

  static Map<String, dynamic>? blurHashEncode(File file) {
    Uint8List fileData = file.readAsBytesSync();
    try {
      img.Image image = img.copyResize(img.decodeImage(fileData.toList())!, width: 81);
      String hash = BlurHash.encode(image, numCompX: 9, numCompY: 9).hash;
      return {'h': image.height, 'w': image.width, 'i': hash};
    } catch (e) {
      return null;
    }
  }

  static createMessage() {}
}
