import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthStorage {
  final SharedPreferences _prefs = GetIt.I<SharedPreferences>();

  Future<bool> setToken(String token) async {
    return _prefs.setString('token', token);
  }

  Future<bool> deleteToken() async {
    return _prefs.remove('token');
  }

  Future<String?> getToken() async {
    return _prefs.getString('token');
  }
}
