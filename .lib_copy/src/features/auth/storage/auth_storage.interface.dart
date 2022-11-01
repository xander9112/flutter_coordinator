abstract class IAuthStorage {
  Future<bool> setToken(String value);

  Future<String?> getToken();

  Future<bool> deleteToken();

  Future<bool> hasToken();

  Future<bool> setPinCode(String value);

  Future<bool> comparePinCode(String value);

  Future<bool> deletePinCode();

  Future<bool> hasPinCode();

  Future<bool> usePinCode();

  Future<bool> deleteUsePinCode();

  Future<bool> setUsePinCode(bool value);
}
