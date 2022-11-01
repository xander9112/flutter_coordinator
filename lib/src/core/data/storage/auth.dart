import 'package:flutter_flow/src/src.dart';
import 'package:get_it/get_it.dart';

class AuthStorage implements IAuthStorage {
  AuthStorage({
    SecureStorageService? secureStorageService,
  }) : _secureStorageService = secureStorageService ?? GetIt.I();

  final SecureStorageService _secureStorageService;

  @override
  Future<bool> comparePinCode(String value) async {
    return _secureStorageService.comparePinCode(value);
  }

  @override
  Future<void> deletePinCode() {
    return _secureStorageService.removePinCode();
  }

  @override
  Future<void> deleteToken() {
    return _secureStorageService.removeToken();
  }

  @override
  Future<String?> getToken() {
    return _secureStorageService.getToken();
  }

  @override
  Future<bool> hasPinCode() {
    return _secureStorageService.hasPinCode;
  }

  @override
  Future<bool> hasToken() {
    return _secureStorageService.hasToken;
  }

  @override
  Future<void> setPinCode(String value) {
    return _secureStorageService.setPinCode(value);
  }

  @override
  Future<void> setToken(String value) {
    return _secureStorageService.setToken(value);
  }

  @override
  void setTempToken(String value) {
    _secureStorageService.token = value;
  }
}
