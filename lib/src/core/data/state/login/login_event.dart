part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.onSignIn() = _OnSignIn;
  const factory LoginEvent.onError({required String error}) = _OnError;
  const factory LoginEvent.onSuccess({required String token}) = _OnSuccess;
}
