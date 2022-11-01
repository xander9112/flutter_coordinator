import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// We do not store user credentials, API tokens, secret API keys
/// in local storage, for that we make use of flutter_secure_storage
/// which stores data in the Android Keystore and Apple keychain with
/// platform-specific encryption technique. In this file, there will be
/// getters and setters for each and every data to be stored in platform
/// secure storage.

class SecureStorageService {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  String? token;

  AndroidOptions _getAndroidOptions() => const AndroidOptions(
        encryptedSharedPreferences: true,
        resetOnError: true,
      );

  Future<bool> get hasToken async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('token') != null;
  }

  Future<void> setToken(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('token', value);
  }

  Future<void> removeToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.remove('token');
  }

  Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('token');
  }

  Future<String?> getRefreshToken() {
    return _secureStorage.read(
        key: 'refreshToken', aOptions: _getAndroidOptions());
  }

  Future<bool> get hasPinCode async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    return prefs.getString('pinCode') != null;
  }

  Future<void> setPinCode(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('pinCode', value);
  }

  Future<void> removePinCode() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.remove('pinCode');
  }

  Future<bool> comparePinCode(String pinCode) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? _pinCode = prefs.getString('pinCode');

    return _pinCode == pinCode;
  }
}
