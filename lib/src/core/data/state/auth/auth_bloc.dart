import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
 AuthBloc() : super(const _Initial()) {
    on<_Started>(_onStart);
    on<_Login>(_onLogIn);
    on<_Verify>(_onVerify);
    on<_Logout>(_onLogout);
  }

  Future<void> _onStart(_Started event, Emitter<AuthState> emit) async {
    if (event.isAuth) {
      emit(AuthState.auth(event.hasPinCode));
    } else {
      emit(const AuthState.initial());
    }
  }

  Future<void> _onLogIn(_Login event, Emitter<AuthState> emit) async {
    emit(AuthState.auth(event.hasPinCode));
  }

  Future<void> _onVerify(_Verify event, Emitter<AuthState> emit) async {
    emit(const AuthState.verified());
  }

  _onLogout(_Logout event, Emitter<AuthState> emit) async {
    emit(const AuthState.initial());
  }
}
