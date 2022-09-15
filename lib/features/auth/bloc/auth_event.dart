part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.logIn({
    required String login,
    required String password,
  }) = _LogIn;
  const factory AuthEvent.verify({
    required String pinCode,
  }) = _Verify;
  const factory AuthEvent.logout() = _Logout;
}
