part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.start({
    @Default(false) bool isAuth,
    @Default(false) bool hasPinCode,
    @Default(true) bool usePinCode,
  }) = _Started;

  const factory AuthEvent.login({@Default(false) bool hasPinCode}) = _Login;

  const factory AuthEvent.verify() = _Verify;

  const factory AuthEvent.logout() = _Logout;
}
