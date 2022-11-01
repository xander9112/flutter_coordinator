import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  void setAuth() {
    emit(const AppState.auth());
  }

  void setUnAuth() {
    emit(const AppState.unAuth());
  }
}
