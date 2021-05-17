//User Model
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:fire_starter/services/database_service.dart';

class UserModel {
  String id;
  String? email;
  String? phone;
  String? name;
  String? photoUrl;
  List<String> memberOf;
  List<String> subscriptions;

  UserModel({required this.id, this.subscriptions = const [], this.email, this.name, this.phone, this.photoUrl, this.memberOf = const []});

  factory UserModel.fromMap(Map data, String id) {
    return UserModel(
      id: id,
      email: data['email'],
      phone: data['phone'],
      name: data['name'],
      photoUrl: data['photoUrl'],
      memberOf: ((data['memberOf'] ?? []) as List).cast<String>(),
      subscriptions: ((data['subscriptions'] ?? []) as List).cast<String>(),
    );
  }

  Map<String, dynamic> toJson() => {"email": email, "phone": phone, "name": name, "photoUrl": photoUrl, "memberOf": memberOf, 'subscriptions': subscriptions};
  String toString() => id + '\n' + toJson().toString();
  save() {
    DatabaseService.update(data: toJson()..addAll({'ts': FieldValue.serverTimestamp()}), path: '${FirebasePaths.prefix}${FirebasePaths.users}/$id');
  }
}
