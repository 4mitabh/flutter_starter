import 'package:fire_starter/fire_starter.dart';
import 'package:fire_starter/services/config_service.dart';

class FirebasePaths {
  static final prefix = ConfigStorage.isAlpha ? '/alpha/alpha' : '/prod/prod';
  static final users = '/users';
  static final metadata = '/metadata';
  static String chat(String uid) => '/users/$uid/workflows';
}
