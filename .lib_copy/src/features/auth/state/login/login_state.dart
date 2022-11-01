part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _InitialState;

  const factory LoginState.loading() = _LoadingState;

  const factory LoginState.success({required String token}) = _SuccessState;

  const factory LoginState.error({required String error}) = _ErrorState;
}
