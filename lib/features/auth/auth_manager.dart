import 'auth_storage.dart';

class AuthManager {
  final AuthStorage _authStorage = AuthStorage();

  Future<bool> get hasToken async {
    String? token = await _authStorage.getToken();

    await Future<dynamic>.delayed(const Duration(seconds: 1));

    return token != null;
  }

  Future<bool> setToken(String token) async {
    return _authStorage.setToken(token);
  }

  Future<bool> deleteToken() async {
    return _authStorage.deleteToken();
  }
}
