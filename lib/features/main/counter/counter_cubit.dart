import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'counter_state.dart';
part 'counter_cubit.freezed.dart';
part 'counter_cubit.g.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit() : super(const CounterState.initial());

  void increment() {
    emit(state.copyWith(counter: state.counter + 1));
  }

  void reset() {
    emit(state.copyWith(counter: 0));
  }

  void updateType(CounterType type) {
    emit(state.copyWith(type: type));
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return <String, dynamic>{'value': state.toJson()};
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromJson(json['value']);
  }
}
