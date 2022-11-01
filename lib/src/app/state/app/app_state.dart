part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = AppStateInitial;
  const factory AppState.unAuth() = AppStateUnAuth;
  const factory AppState.auth() = AppStateAuth;
}
