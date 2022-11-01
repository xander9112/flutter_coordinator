abstract class IAuthStorage {
  Future<void> setToken(String value);

  Future<String?> getToken();

  Future<void> deleteToken();

  Future<bool> hasToken();

  Future<void> setPinCode(String value);

  Future<bool> comparePinCode(String value);

  Future<void> deletePinCode();

  Future<bool> hasPinCode();

  void setTempToken(String value);
}
