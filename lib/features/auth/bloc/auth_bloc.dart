import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import '../auth_manager.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    AuthManager? authManager,
  })  : _authManager = authManager ?? GetIt.I<AuthManager>(),
        super(const _Initial()) {
    on<_Started>(_onStarted);
    on<_LogIn>(_onLogIn);
    on<_Verify>(_onVerify);
    on<_Logout>(_onLogout);
  }

  final AuthManager _authManager;

  Future<void> _onStarted(_Started event, Emitter<AuthState> emit) async {
    final bool hasToken = await _authManager.hasToken;

    if (hasToken) {
      // Можно сделать запрос на бэк и убедится что токен валидный

      emit(const AuthState.auth());
    } else {
      emit(const AuthState.initial());
    }
  }

  Future<void> _onLogIn(_LogIn event, Emitter<AuthState> emit) async {
    // Отправить на бэк и проверить
    // event.login;
    // event.password;
    String token = await Future<String>.value('token123');

    emit(AuthState.auth(token));
  }

  Future<void> _onVerify(_Verify event, Emitter<AuthState> emit) async {
// проверить пин код и если правильный и есть токен сохранить токен, если нет
// просто изменить состояние

    String? token = state.maybeMap(orElse: () => null, auth: (_) => _.token);

    if (token != null) {
      await _authManager.setToken(token);
    }

    emit(const AuthState.verified());
  }

  _onLogout(_Logout event, Emitter<AuthState> emit) async {
    await _authManager.deleteToken();

    emit(const AuthState.initial());
  }
}
