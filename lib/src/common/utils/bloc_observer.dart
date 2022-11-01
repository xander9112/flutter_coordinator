// ignore_for_file: lines_longer_than_80_chars

import 'package:bloc/bloc.dart';
import 'package:flutter_flow/src/common/utils/logger.dart';

class AppBlocObserver extends BlocObserver {
  AppBlocObserver._();

  factory AppBlocObserver.instance() => _singleton ??= AppBlocObserver._();
  static AppBlocObserver? _singleton;

  @override
  void onCreate(BlocBase<Object?> bloc) {
    super.onCreate(bloc);

    AppLogger.log(message: '${bloc.runtimeType}()');
  }

  @override
  void onEvent(Bloc<void, Object?> bloc, Object? event) {
    super.onEvent(bloc, event);
    if (event == null) return;
    AppLogger.log(message: '${bloc.runtimeType}.add(${event.runtimeType})');
    final Object? state = bloc.state;
    if (state == null) return;
  }

  @override
  void onTransition(
    Bloc<Object?, Object?> bloc,
    Transition<Object?, Object?> transition,
  ) {
    super.onTransition(bloc, transition);
    final Object? event = transition.event;
    final Object? currentState = transition.currentState;
    final Object? nextState = transition.nextState;
    if (event == null || currentState == null || nextState == null) return;
    AppLogger.log(
        message:
            '${bloc.runtimeType} ${event.runtimeType}: ${currentState.runtimeType}->${nextState.runtimeType}');
  }

  @override
  void onError(BlocBase<Object?> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    AppLogger.logError(message: error.toString());

    // ErrorUtil.logError(
    //   error,
    //   stackTrace: stackTrace,
    //   hint: 'BLoC: ${bloc.runtimeType.toString()}',
    // );
  }

  @override
  void onClose(BlocBase<Object?> bloc) {
    super.onClose(bloc);
    AppLogger.log(message: '${bloc.runtimeType}.close()');
  }
}
