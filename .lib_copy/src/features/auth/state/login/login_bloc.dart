import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _InitialState()) {
    on<_Login>(_onLogin);
  }

  Future<void> _onLogin(_Login event, Emitter<LoginState> emit) async {
    emit(const LoginState.loading());

    await Future<dynamic>.delayed(const Duration(seconds: 1));

    if (event.login == 'user' && event.password == '123') {
      emit(const LoginState.success(token: '123token321'));
    } else {
      emit(const LoginState.error(error: 'Не верно указаны логин или пароль'));
    }
  }
}
