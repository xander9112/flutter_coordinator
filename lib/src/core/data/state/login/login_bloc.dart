import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _InitialState()) {
    on<_OnSignIn>(_onSingIn);
    on<_OnError>(_onError);
    on<_OnSuccess>(_onSuccess);
  }

  Future<void> _onSingIn(_OnSignIn event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());
  }

  Future<void> _onError(_OnError event, Emitter<LoginState> emit) async {
    emit(LoginState.error(error: event.error));
  }

  Future<void> _onSuccess(_OnSuccess event, Emitter<LoginState> emit) async {
    emit(LoginState.success(token: event.token));
  }
}
