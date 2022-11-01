part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.auth(
    bool hasPinCode, {
    @Default(true) bool usePinCode,
    String? token,
  }) = _Auth;

  const factory AuthState.verified() = _Verified;
}
