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
  List<String> subscriptionsX;
  List<Map<String, dynamic>>? alerts;

  UserModel({required this.id, this.subscriptionsX = const [], this.email, this.name, this.phone, this.photoUrl, this.alerts, this.memberOf = const []});

  factory UserModel.fromMap(Map data, String id) {
    return UserModel(
      id: id,
      email: data['email'],
      phone: data['phone'],
      name: data['name'],
      photoUrl: data['photoUrl'],
      memberOf: ((data['memberOf'] ?? []) as List).cast<String>(),
      subscriptionsX: ((data['subscriptions'] ?? []) as List).cast<String>(),
      alerts: ((data['alerts'] ?? defaultAlertsFromSubscriptions(data)) as List).cast<Map<String, dynamic>>(),
    );
  }

  static List<Map<String, dynamic>> defaultAlertsFromSubscriptions(data) {
    var s = ((data['subscriptions'] ?? []) as List).cast<String>();
    return s.map<Map<String, dynamic>>((e) => {'district': e}).toList();
  }

  Map<String, dynamic> toJson() {
    subscriptionsX = alerts?.map((e) => e['district']).toSet().toList().cast<String>() ?? [];
    return {"email": email, "phone": phone, "name": name, "photoUrl": photoUrl, "memberOf": memberOf, 'subscriptions': subscriptionsX, 'alerts': alerts};
  }

  String toString() => id + '\n' + toJson().toString();
  save() {
    return DatabaseService.update(data: toJson()..addAll({'ts': FieldValue.serverTimestamp()}), path: '${FirebasePaths.prefix}${FirebasePaths.users}/$id');
  }
}
