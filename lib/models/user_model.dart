//User Model
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fire_starter/constants/firebase_paths.dart';
import 'package:package_info_plus/package_info_plus.dart';

class UserModel {
  String id;
  String? email;
  String? phone;
  String? name;
  String? photoUrl;
  List<String> memberOf;
  List<String> managerOf;
  List<String> nt;
  Map<String, dynamic> _custom = {};

  UserModel({required this.id, this.email, this.name, this.phone, this.photoUrl, this.managerOf = const [], this.memberOf = const [], this.nt = const []});

  UserModel.fromJson(Map<String, Object?> json)
      : this(
          id: json['id']! as String,
          email: json['email'] as String,
          phone: json['phone'] as String,
          name: json['name'] as String,
          photoUrl: json['photoUrl'] as String,
          managerOf: json['managerOf'] == null ? [] : (json['managerOf']! as List).cast<String>(),
          memberOf: json['memberOf'] == null ? [] : (json['memberOf']! as List).cast<String>(),
          nt: json['nt'] == null ? [] : (json['nt'] as List).cast<String>(),
        );

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = this._custom;
    json.addAll({
      "email": email,
      "id": id,
      "phone": phone,
      "name": name,
      'nt': nt,
      "memberOf": memberOf,
      "photoUrl": photoUrl,
      'lastLogin': FieldValue.serverTimestamp(),
      'ts': FieldValue.serverTimestamp()
    });
    return json;
  }

  String toString() => toJson().toString();

  static UserModel fromFirestore(DocumentSnapshot<Map<String, dynamic?>> snapshot, SnapshotOptions? options) => UserModel.fromJson(snapshot.data()!);
  static Map<String, dynamic> toFirestore(UserModel user, SetOptions? options) => user.toJson();

  static Future<UserModel> fromUID(String uid) async => (await getRef(uid).get()).data()!;

  static DocumentReference<UserModel> getRef(String uid) => FirebaseFirestore.instance
      .doc('${FirebasePaths.prefix}${FirebasePaths.users}/$uid')
      .withConverter<UserModel>(fromFirestore: UserModel.fromFirestore, toFirestore: UserModel.toFirestore);

  void update({Map<String, dynamic>? custom}) {
    if (custom != null) this._custom.addAll(custom);
    getRef(this.id).set(this, SetOptions(merge: true));
  }
}
