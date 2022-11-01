import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_storage.interface.dart';

class AuthStorage implements IAuthStorage {
  AuthStorage({
    SharedPreferences? prefs,
    String? tokenKey,
    String? pinCodeKey,
    String? usePinCodeKey,
  })  : _prefs = prefs ?? GetIt.I(),
        _tokenKey = tokenKey ?? 'token',
        _pinCodeKey = pinCodeKey ?? 'pin_code_token',
        _usePinCodeKey = usePinCodeKey ?? 'use_pin_code';

  final SharedPreferences _prefs;
  final String _tokenKey;
  final String _pinCodeKey;
  final String _usePinCodeKey;

  @override
  Future<bool> deleteToken() async {
    return _prefs.remove(_tokenKey);
  }

  @override
  Future<String?> getToken() async {
    return _prefs.getString(_tokenKey);
  }

  @override
  Future<bool> hasToken() async {
    final String? _token = await getToken();

    return _token != null;
  }

  @override
  Future<bool> setToken(String value) async {
    return _prefs.setString(_tokenKey, value);
  }

  @override
  Future<bool> comparePinCode(String value) async {
    if (await hasPinCode()) {
      String? _pinCode = _prefs.getString(_pinCodeKey);

      return _pinCode == value;
    }

    return false;
  }

  @override
  Future<bool> deletePinCode() {
    return _prefs.remove(_pinCodeKey);
  }

  @override
  Future<bool> hasPinCode() async {
    String? _pinCode = _prefs.getString(_pinCodeKey);

    return _pinCode != null;
  }

  @override
  Future<bool> setPinCode(String value) {
    return _prefs.setString(_pinCodeKey, value);
  }

  @override
  Future<bool> deleteUsePinCode() {
    return _prefs.remove(_usePinCodeKey);
  }

  @override
  Future<bool> setUsePinCode(bool value) {
    return _prefs.setBool(_usePinCodeKey, value);
  }

  @override
  Future<bool> usePinCode() async {
    return _prefs.getBool(_usePinCodeKey) ?? true;
  }
}
