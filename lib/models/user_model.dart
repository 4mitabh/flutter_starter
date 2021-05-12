//User Model
class UserModel {
  String id;
  String? email;
  String? phone;
  String? name;
  String? photoUrl;

  UserModel({required this.id, this.email, this.name, this.phone, this.photoUrl});

  factory UserModel.fromMap(Map data, String id) {
    return UserModel(
      id: id,
      email: data['email'],
      phone: data['phone'],
      name: data['name'],
      photoUrl: data['photoUrl'],
    );
  }

  Map<String, dynamic> toJson() => {"email": email, "phone": phone, "name": name, "photoUrl": photoUrl};
  String toString() => id + '\n' + toJson().toString();
}
